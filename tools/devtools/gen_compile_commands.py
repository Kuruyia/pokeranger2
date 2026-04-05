#!/usr/bin/env python3

import json
import pathlib

homedir = pathlib.Path(__file__).resolve().parent.parent.parent
builddir = homedir / "build"
generateddir = builddir / "generated"
meson_options_file = builddir / "meson-info" / "intro-buildoptions.json"

cwsdkdir = homedir / "subprojects" / "metroskrew" / "lib" / "metroskrew" / "sdk" / "ds" / "2.0" / "sp2"
cwlibcdir = cwsdkdir / "msl" / "MSL_C" / "MSL_Common" / "Include"
cwlibcarmdir = cwsdkdir / "msl" / "MSL_C" / "MSL_ARM" / "Include"
cwextrasdir = cwsdkdir / "msl" / "MSL_Extras" / "MSL_Common" / "Include"
cwextrasarmdir = cwsdkdir / "msl" / "MSL_Extras" / "MSL_ARM" / "Include"

arm7_c_flags = [
    "arm-none-eabi-gcc",
    "-c",
    "-O3",
    "-std=c99",
    "-mcpu=arm7tdmi",
    "-mfloat-abi=soft",
    "-nostdinc",
    "-D_NITRO",
    "-D__arm",
    "-DSDK_4M",
    "-DSDK_ARM7",
    "-DSDK_CODE_ARM",
    "-DSDK_CW",
    "-DSDK_CW_FORCE_EXPORT_SUPPORT",
    "-DSDK_FINALROM",
    "-DSDK_TS",
]

arm9_cpp_flags = [
    "-O3",
    "-mcpu=arm946e-s",
    "-mfloat-abi=soft",
    "-nostdinc",
    "-D_NITRO",
    "-D__arm",
    "-DNNS_FINALROM",
    "-DSDK_4M",
    "-DSDK_ARM9",
    "-DSDK_CODE_ARM",
    "-DSDK_CW",
    "-DSDK_CW_FORCE_EXPORT_SUPPORT",
    "-DSDK_FINALROM",
    "-DSDK_TS",
    "-DPM_KEEP_ASSERTS",
    "-DGAME_LANGUAGE=ENGLISH",
    "-DEXPLICIT_WCHAR_TYPEDEF",
]

with open(meson_options_file, 'r') as optf:
    meson_options = json.load(optf)

def find_option(opt: str):
    return [o["value"] for o in meson_options if o["name"] == opt][0]

gdb_debugging = find_option("gdb_debugging")
logging_enabled = find_option("logging_enabled")

if gdb_debugging:
    arm9_cpp_flags.append("-DGDB_DEBUGGING")

if logging_enabled:
    arm9_cpp_flags.append("-DLOGGING_ENABLED")

arm9_c_flags = [
    "arm-none-eabi-gcc",
    "-c",
    "-std=c99",
] + arm9_cpp_flags

arm9_cxx_flags = [
    "arm-none-eabi-g++",
    "-c",
    "-std=c++98",
] + arm9_cpp_flags

asm_commands = [
    {
        "directory": builddir,
        "arguments": [
            "arm-none-eabi-as",
            "-mcpu=arm946e-s",
            "-o",
            file.with_suffix(".o"),
            file.resolve(),
        ],
        "file": file.resolve(),
    }
    for file in (homedir / "asm").rglob("*.s")
]

nitrosdk_c_commands = [
    {
        "directory": builddir,
        "arguments": arm9_c_flags
        + [
            f"-I{cwlibcdir}",
            f"-I{cwextrasdir}",
            f"-I{cwlibcarmdir}",
            f"-I{cwextrasarmdir}",
            f"-I{homedir}/subprojects/NitroSDK-4.1.30001/include",
            f"-I{builddir}/subprojects/NitroSDK-4.1.30001/gen",
            "-o",
            file.with_suffix(".o"),
            file.resolve(),
        ],
        "file": file.resolve(),
    }
    for file in (homedir / "subprojects/NitroSDK-4.1.30001").rglob("*.c")
]

nitrosystem_c_commands = [
    {
        "directory": builddir,
        "arguments": arm9_c_flags
        + [
            f"-I{cwlibcdir}",
            f"-I{cwextrasdir}",
            f"-I{cwlibcarmdir}",
            f"-I{cwextrasarmdir}",
            f"-I{homedir}/subprojects/NitroSDK-4.1.30001/include",
            f"-I{builddir}/subprojects/NitroSDK-4.1.30001/gen",
            f"-I{homedir}/subprojects/NitroSystem-071126.1/include",
            "-o",
            file.with_suffix(".o"),
            file.resolve(),
        ],
        "file": file.resolve(),
    }
    for file in (homedir / "subprojects/NitroSystem-071126.1").rglob("*.c")
]

nitrowifi_c_commands = [
    {
        "directory": builddir,
        "arguments": arm9_c_flags
        + [
            f"-I{cwlibcdir}",
            f"-I{cwextrasdir}",
            f"-I{cwlibcarmdir}",
            f"-I{cwextrasarmdir}",
            f"-I{homedir}/subprojects/NitroSDK-4.1.30001/include",
            f"-I{builddir}/subprojects/NitroSDK-4.1.30001/gen",
            f"-I{homedir}/subprojects/NitroSystem-071126.1/include",
            f"-I{homedir}/subprojects/NitroWiFi-2.1.30002/include",
            "-o",
            file.with_suffix(".o"),
            file.resolve(),
        ],
        "file": file.resolve(),
    }
    for file in (homedir / "subprojects/NitroWiFi-2.1.30002").rglob("*.c")
]

nitrodwc_c_commands = [
    {
        "directory": builddir,
        "arguments": arm9_c_flags
        + [
            f"-I{cwlibcdir}",
            f"-I{cwextrasdir}",
            f"-I{cwlibcarmdir}",
            f"-I{cwextrasarmdir}",
            f"-I{homedir}/subprojects/NitroSDK-4.1.30001/include",
            f"-I{builddir}/subprojects/NitroSDK-4.1.30001/gen",
            f"-I{homedir}/subprojects/NitroSystem-071126.1/include",
            f"-I{homedir}/subprojects/NitroWiFi-2.1.30002/include",
            f"-I{homedir}/subprojects/NitroDWC-2.2.30000/include",
            f"-I{homedir}/subprojects/NitroDWC-2.2.30000/include/gs",
            f"-I{homedir}/subprojects/NitroDWC-2.2.30000/include/base",
            "-o",
            file.with_suffix(".o"),
            file.resolve(),
        ],
        "file": file.resolve(),
    }
    for file in (homedir / "subprojects/NitroDWC-2.2.30000").rglob("*.c")
]

c_commands = [
    {
        "directory": builddir,
        "arguments": arm9_c_flags
        + [
            f"-I{cwlibcdir}",
            f"-I{cwextrasdir}",
            f"-I{cwlibcarmdir}",
            f"-I{cwextrasarmdir}",
            f"-I{generateddir}",
            f"-I{homedir}/subprojects/NitroSDK-4.1.30001/include",
            f"-I{builddir}/subprojects/NitroSDK-4.1.30001/gen",
            f"-I{homedir}/subprojects/NitroSystem-071126.1/include",
            f"-I{homedir}/subprojects/NitroWiFi-2.1.30002/include",
            f"-I{homedir}/subprojects/NitroDWC-2.2.30000/include",
            f"-I{homedir}/subprojects/NitroDWC-2.2.30000/include/gs",
            f"-I{homedir}/subprojects/NitroDWC-2.2.30000/include/base",
            f"-iquote{homedir}",
            f"-iquote{homedir}/include",
            f"-iquote{homedir}/build",  # Meson includes this implicitly
            f"-iquote{homedir}/build/res",  # knarc-generated NAIX headers
            f"-iquote{homedir}/build/res/text",  # GMM-generated headers
            f"-include{homedir}/include/pch/global_pch.hpp",
            "-mthumb",
            "-o",
            file.with_suffix(".o"),
            file.resolve(),
        ],
        "file": file.resolve(),
    }
    for file in (homedir / "src").rglob("*.c")
]

cxx_commands = [
    {
        "directory": builddir,
        "arguments": arm9_cxx_flags
        + [
            f"-I{cwlibcdir}",
            f"-I{cwextrasdir}",
            f"-I{cwlibcarmdir}",
            f"-I{cwextrasarmdir}",
            f"-I{generateddir}",
            f"-I{homedir}/subprojects/NitroSDK-4.1.30001/include",
            f"-I{builddir}/subprojects/NitroSDK-4.1.30001/gen",
            f"-I{homedir}/subprojects/NitroSystem-071126.1/include",
            f"-I{homedir}/subprojects/NitroWiFi-2.1.30002/include",
            f"-I{homedir}/subprojects/NitroDWC-2.2.30000/include",
            f"-I{homedir}/subprojects/NitroDWC-2.2.30000/include/gs",
            f"-I{homedir}/subprojects/NitroDWC-2.2.30000/include/base",
            f"-iquote{homedir}",
            f"-iquote{homedir}/include",
            f"-iquote{homedir}/build",  # Meson includes this implicitly
            f"-iquote{homedir}/build/res",  # knarc-generated NAIX headers
            f"-iquote{homedir}/build/res/text",  # GMM-generated headers
            f"-include{homedir}/include/pch/global_pch.hpp",
            "-mthumb",
            "-o",
            file.with_suffix(".o"),
            file.resolve(),
        ],
        "file": file.resolve(),
    }
    for file in (homedir / "src").rglob("*.cpp")
]

nitroarc_c_commands = [
    {
        "directory": builddir,
        "arguments": [
            "gcc",
            f"-I{homedir}/tools/nitroarc/lib/include",
            "-std=c99",
            "-Wall",
            "-Wextra",
            "-Wpedantic",
            "-Wconversion",
            "-Wno-sign-conversion",
            "-o",
            file.with_suffix(".o"),
            file.resolve(),
        ],
        "file": file.resolve(),
    }
    for file in (homedir / "tools" / "nitroarc").rglob("*.c")
]

datagen_cxx_commands = [
    {
        "directory": builddir,
        "arguments": [
            "g++",
            f"-I{homedir}/subprojects/rapidjson-1.1.0/include",  # JSON parser
            f"-I{homedir}/tools/nitroarc/lib/include",  # NARC packing
            f"-I{homedir}/tools/datagen",  # base header file
            f"-I{homedir}/include",  # source includes
            f"-I{builddir}",  # metang-generated headers (constants)
            "-std=c++17",
            "-Wno-deprecated-declarations",
            "-o",
            file.with_suffix(".o"),
            file.resolve(),
        ],
        "file": file.resolve(),
    }
    for file in (homedir / "tools" / "datagen").rglob("*.cpp")
]

dataproc_c_commands = [
    {
        "directory": builddir,
        "arguments": [
            "gcc",
            f"-I{homedir}/subprojects/yyjson-0.12.0/src",
            f"-I{homedir}/tools/nitroarc/lib/include",
            f"-I{homedir}/tools/dataproc/lib/include",
            f"-I{homedir}/include",
            f"-I{builddir}",
            f'-DREPO_INCLUDE="{homedir}/include"',
            f'-DREPO_BUILD="{builddir}"',
            f'-DTEMPLATES_DIR="{homedir}/tools/dataproc/data"',
            "-std=gnu17",
            "-Wall",
            "-Wextra",
            "-Wpedantic",
            "-Wconversion",
            "-Wno-sign-conversion",
            "-o",
            file.with_suffix(".o"),
            file.resolve(),
        ],
        "file": file.resolve(),
    }
    for file in (homedir / "tools" / "dataproc").rglob("*.c")
]

with open("compile_commands.json", "w") as ofp:
    json.dump(
        asm_commands
        + nitrosdk_c_commands
        + nitrosystem_c_commands
        + nitrowifi_c_commands
        + nitrodwc_c_commands
        + c_commands
        + cxx_commands
        + datagen_cxx_commands
        + nitroarc_c_commands
        + dataproc_c_commands,
        ofp,
        default=str,
        indent=4,
    )
