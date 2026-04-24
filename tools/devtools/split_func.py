#!/usr/bin/env python3

import argparse
from dataclasses import dataclass
import logging
import os
from pathlib import Path
import re
from typing import Callable, List, Set, Tuple

MESON_BUILD_FILENAME = "meson.build"
REPO_DIR = Path(__file__).resolve().parent.parent.parent
ASM_DIR = REPO_DIR / "asm"
ASM_INCLUDE_DIR = ASM_DIR / "include"
ASM_MESON = ASM_DIR / MESON_BUILD_FILENAME
INCLUDE_DIR = REPO_DIR / "include"
SRC_DIR = REPO_DIR / "src"
SRC_MESON = SRC_DIR / MESON_BUILD_FILENAME
LINKER_SPEC = REPO_DIR / "ranger2.us" / "main.lsf"

ARM_FUNC_START = "arm_func_start"
ARM_REGS = [
    "r0",
    "r1",
    "r2",
    "r3",
    "r4",
    "r5",
    "r6",
    "r7",
    "r8",
    "sb",
    "sl",
    "fp",
    "ip",
    "sp",
    "lr",
    "pc",
]

LOGGER = logging.getLogger(__name__)


@dataclass
class FunctionLocation:
    name: str
    file: Path
    start_line: int
    end_line: int


def find_function(funcname: str) -> FunctionLocation:
    """Finds the definition of the specified function in all asm files."""
    function_start_text = "{} {}".format(ARM_FUNC_START, funcname)
    results: List[FunctionLocation] = []

    for asm_file in ASM_DIR.glob("*.s"):
        contents = asm_file.read_text()
        lines = contents.splitlines()

        in_function = False
        function_start_line = 0

        for i, line in enumerate(lines):
            if not in_function and function_start_text in line:
                in_function = True
                function_start_line = i
            elif in_function and ARM_FUNC_START in line:
                in_function = False
                results.append(
                    FunctionLocation(funcname, asm_file, function_start_line, i)
                )

        if in_function:
            results.append(
                FunctionLocation(funcname, asm_file, function_start_line, len(lines))
            )

    if not results:
        raise Exception("Function {} could not be found".format(funcname))
    elif len(results) > 1:
        for result in results:
            LOGGER.info("* {}".format(result))

        raise Exception("Multiple definitions of function {} found".format(funcname))

    return results[0]


def strip_empty_lines(lines: List[str]) -> List[str]:
    """Removes the empty lines at the start and end of a string list."""
    while lines and not lines[0].strip():
        lines.pop(0)

    while lines and not lines[-1].strip():
        lines.pop()

    return lines


def extract_function(loc: FunctionLocation) -> List[str]:
    """Extracts the code of an asm function from a file."""
    contents = loc.file.read_text()
    lines = contents.splitlines()

    func_lines = lines[loc.start_line : loc.end_line]
    return strip_empty_lines(func_lines)


def dump_asm_function(lines: List[str]):
    """Prints the contents of an asm function."""
    print("```asm")

    for line in lines:
        print(line)

    print("```")


def split_file(file: Path, start: int, end: int) -> Tuple[str, str]:
    """Splits a file in two parts, with the head containing the lines before `start` and the tail containing the lines after `end`."""
    contents = file.read_text()
    lines = contents.splitlines()

    return (lines[:start], lines[end:])


def get_first_function_addr(lines: List[str]) -> int:
    """Returns the address of the first asm function found in the lines."""
    func_regex = re.compile(
        "{} .*([0-9a-fA-F]{{8}})".format(ARM_FUNC_START),
        flags=re.MULTILINE | re.UNICODE,
    )

    for line in lines:
        matches = func_regex.findall(line)

        if len(matches) > 1:
            raise Exception("Multiple addresses found in function start")
        elif len(matches) == 1:
            return int(matches[0], 16)

    raise Exception("No function found in the provided lines")


def create_tail_asm_file(filename_prefix: str, lines: List[str], dry_run: bool) -> Path:
    """Creates the asm file containing the contents after the split location."""
    tail_filename = ""

    try:
        tail_addr = get_first_function_addr(lines)
        tail_filename = "{}_{:08X}.s".format(filename_prefix, tail_addr)
    except Exception:
        LOGGER.warning("Unable to automatically determine the new asm file name")
        tail_filename = input(
            "How to name the file that contains the asm code after the requested function? "
        )

    tail_file = ASM_DIR.joinpath(tail_filename)
    LOGGER.info(
        "Creating tail asm file with {} lines: {}".format(len(lines), tail_file)
    )

    if not dry_run:
        with tail_file.open("w") as f:
            f.write('    .include "macros.inc"\n')
            f.write(
                '    .include "include/{}.inc"\n'.format(
                    os.path.splitext(tail_file.name)[0]
                )
            )
            f.write("\n")
            f.write("    .text\n")
            f.write("\n")

            for line in lines:
                f.write(line)
                f.write("\n")

            if lines[-1].strip():
                f.write("")
    else:
        LOGGER.info("Dry run enabled, skipping tail asm file creation")

    return tail_file


def find_external_symbols(lines: List[str]) -> List[str]:
    """Finds the symbols used by but not defined in an asm file."""
    ext_symbols: Set[str] = set()
    int_symbols: Set[str] = set()

    label_def_regex = re.compile(r"^(\w+):", re.MULTILINE)

    def remove_after(s: str, sep: str) -> str:
        return s.split(sep)[0].strip()

    def handle_line(line: str, instr: str, filter: Callable[[str], bool]) -> bool:
        if line.startswith("{} ".format(instr)):
            arg = line[len(instr) :].strip()
            arg = remove_after(arg, ";")
            arg = remove_after(arg, "+")

            if filter(arg):
                ext_symbols.add(arg)

        return False

    for line in lines:
        line = line.strip()
        label_def_matches = label_def_regex.findall(line)

        if label_def_matches:
            int_symbols.add(label_def_matches[0])
            line = line[len(label_def_matches[0]) + 1 :].strip()

            if not line:
                continue

        handle_line(line, ".word", lambda arg: not arg.startswith("0x")) or handle_line(
            line, "b", lambda arg: not arg.startswith("_")
        ) or handle_line(line, "bl", lambda _: True) or handle_line(
            line, "blx", lambda arg: arg not in ARM_REGS
        )

    result = list(ext_symbols.difference(int_symbols))
    result.sort()

    return result


def create_inc_file(file: Path, asm_lines: List[str], dry_run: bool):
    """Creates the include file related to an asm file."""
    external_symbols = find_external_symbols(asm_lines)
    LOGGER.info(
        "Creating tail inc file with {} external symbols: {}".format(
            len(external_symbols), file
        )
    )

    if not dry_run:
        with file.open("w") as f:
            f.write("#pragma once\n")

            for sym in external_symbols:
                f.write(".public {}\n".format(sym))
    else:
        LOGGER.info("Dry run enabled, skipping inc file creation")


def update_meson_file(meson_file: Path, filename: str, after: str, dry_run: bool):
    """Updates a Meson build file to include a new file."""
    contents = meson_file.read_text()
    lines = contents.splitlines()
    curr_line = 0

    while curr_line < len(lines):
        line = lines[curr_line].strip()

        if line == "'{}',".format(after):
            lines.insert(curr_line + 1, "    '{}',".format(filename))
            break

        curr_line += 1

    if curr_line == len(lines):
        raise Exception("Unable to update the Meson file")

    if not dry_run:
        with meson_file.open("w") as f:
            for line in lines:
                f.write("{}\n".format(line))
    else:
        LOGGER.info("Dry run enabled, skipping Meson file update")


def update_linker_spec(file: Path, after: Path, dry_run: bool):
    """Updates the linker spec to include a new file."""
    file_relative = file.relative_to(REPO_DIR)
    after_relative = after.relative_to(REPO_DIR)

    def to_obj_path(file: Path) -> str:
        path = "main.nef.p/"

        for part in file.parts:
            path += "{}_".format(part)

        path = path[:-1]
        path += ".o"

        return path

    contents = LINKER_SPEC.read_text()
    lines = contents.splitlines()
    curr_line = 0

    while curr_line < len(lines):
        line = lines[curr_line].strip()

        if line == "Object {}".format(to_obj_path(after_relative)):
            lines.insert(
                curr_line + 1, "    Object {}".format(to_obj_path(file_relative))
            )
            break

        curr_line += 1

    if curr_line == len(lines):
        raise Exception("Unable to update the linker spec")

    if not dry_run:
        with LINKER_SPEC.open("w") as f:
            for line in lines:
                f.write("{}\n".format(line))
    else:
        LOGGER.info("Dry run enabled, skipping linker spec update")


def create_head_asm_file(file: Path, lines: List[str], dry_run: bool):
    """Creates the asm file containing the contents before the split location."""
    LOGGER.info("Creating head asm file with {} lines: {}".format(len(lines), file))

    if not dry_run:
        with file.open("w") as f:
            for line in lines:
                f.write("{}\n".format(line))
    else:
        LOGGER.info("Dry run enabled, skipping head asm file creation")


def create_cpp_files(funcname: str, dry_run: bool) -> Tuple[Path, Path]:
    """Creates the C++ source and header files for the extracted function."""
    cpp_file = SRC_DIR / "{}.cpp".format(funcname)
    hpp_file = INCLUDE_DIR / "{}.hpp".format(funcname)

    LOGGER.info("Creating C++ source file: {}".format(cpp_file))

    if not dry_run:
        with open(cpp_file, "w") as f:
            f.write('#include "{}"\n'.format(hpp_file.name))
            f.write("\n")
            f.write("void {}(void)\n".format(funcname))
            f.write("{\n")
            f.write("\n")
            f.write("}\n")
    else:
        LOGGER.info("Dry run enabled, skipping C++ source file creation")

    header_guard = "POKERANGER2_{}_HPP".format(funcname.upper())
    LOGGER.info("Creating header file: {}".format(hpp_file))

    if not dry_run:
        with open(hpp_file, "w") as f:
            f.write("#ifndef {}\n".format(header_guard))
            f.write("#define {}\n".format(header_guard))
            f.write("\n")
            f.write("void {}(void);\n".format(funcname))
            f.write("\n")
            f.write("#endif // {}\n".format(header_guard))
    else:
        LOGGER.info("Dry run enabled, skipping C++ header file creation")

    return (cpp_file, hpp_file)


@dataclass
class Args:
    funcname: str
    dry_run: bool


def get_cli_args() -> Args:
    """Parses the command-line arguments."""
    parser = argparse.ArgumentParser(
        prog="split_func",
        description="Splits an asm file at the specified function, and prepares the repo for a decompilation of this function",
    )

    parser.add_argument("funcname", help="Name of the function to split from")
    parser.add_argument(
        "--dry-run",
        help="Whether to actually perform any change",
        action="store_true",
        default=False,
    )

    return parser.parse_args()


if __name__ == "__main__":
    logging.basicConfig(
        level=logging.INFO, format="[%(asctime)s %(levelname)s] %(message)s"
    )

    args = get_cli_args()

    func_loc = find_function(args.funcname)
    LOGGER.info("Found function: {}".format(func_loc))

    func_asm = extract_function(func_loc)
    (head, tail) = split_file(func_loc.file, func_loc.start_line, func_loc.end_line)

    head = strip_empty_lines(head)
    tail = strip_empty_lines(tail)

    if tail:
        filename_prefix = "_".join(func_loc.file.name.split("_")[:-1])
        tail_asm_file = create_tail_asm_file(filename_prefix, tail, args.dry_run)

        tail_inc_filename = ASM_INCLUDE_DIR.joinpath(tail_asm_file.name).with_suffix(
            ".inc"
        )
        create_inc_file(tail_inc_filename, tail, args.dry_run)

        update_meson_file(
            ASM_MESON, tail_asm_file.name, func_loc.file.name, args.dry_run
        )
        update_linker_spec(tail_asm_file, func_loc.file, args.dry_run)

    create_head_asm_file(func_loc.file, head, args.dry_run)

    head_inc_filename = ASM_INCLUDE_DIR.joinpath(func_loc.file.name).with_suffix(".inc")
    create_inc_file(head_inc_filename, head, args.dry_run)

    (cpp_file, hpp_file) = create_cpp_files(args.funcname, args.dry_run)
    update_meson_file(SRC_MESON, cpp_file.name, "main.cpp", args.dry_run)
    update_linker_spec(cpp_file, func_loc.file, args.dry_run)

    LOGGER.info("Extracted function code:")
    dump_asm_function(func_asm)
