project('pokeranger2', ['c', 'cpp', 'nasm'],
    version: '1.0',
    meson_version: '>=1.5.0',
    default_options : [
        'buildtype=plain',
        'warning_level=0'
    ]
)

fs = import('fs')

############################################################
###                    INCLUDE PATHS                     ###
############################################################
public_includes = include_directories('include', 'asm', 'res')
toplevel_includes = include_directories('.')


############################################################
###                    COMPILER FLAGS                    ###
############################################################
cpp_args = [
    '-proc', 'arm946e',
    '-enum', 'int',
    '-Cpp_exceptions', 'off',
    '-gccext,on',
    '-msgstyle', 'gcc',
    '-ipa', 'file',
    '-interworking',
    '-inline', 'on,noauto',
    '-char', 'signed',
    '-nosyspath',
    '-stdinc',
    '-sym', 'on',
    '-D_MSL_RESTRICT=',
]

if get_option('gdb_debugging')
    cpp_args += [
        '-O1,p',
        '-inline', 'off'
    ]
else
    cpp_args += '-O4,p'
endif

c_args = [
    cpp_args,
    '-lang', 'c99',
]

cxx_args = [
    cpp_args,
    '-lang', 'c++',
]

add_global_arguments(c_args,
    language: 'c',
    native: false
)

add_global_arguments(cxx_args,
    language: 'cpp',
    native: false
)

pokeranger2_args = [
    '-DPM_KEEP_ASSERTS',
    '-DGAME_LANGUAGE=ENGLISH'
]

if get_option('gdb_debugging')
    pokeranger2_args += '-DGDB_DEBUGGING'
endif

if get_option('logging_enabled')
    pokeranger2_args += '-DLOGGING_ENABLED'
endif

asm_args = [
    '-proc', 'arm5TE',
    '-16',
    '-gccinc'
]

link_args = [
    '-w', 'off',
    '-proc', 'arm946e',
    '-nopic',
    '-nopid',
    '-interworking',
    '-map', 'closure,unused',
    '-symtab', 'sort',
    '-msgstyle' ,'gcc',
    '-m', '_start',
    '-force_active', 'DGTi_hash2_arm4_small',
    '-sym', 'on'
]

############################################################
###                     DEPENDENCIES                     ###
############################################################
nitrosdk_dep = dependency('NitroSDK',
    default_options: {
        'mwrap_sdk': '2.0/sp1p2',
        'sp1p3_conditionals': true
    }
)

nitrosystem_dep = dependency('NitroSystem',
    default_options: {
        'mwrap_sdk': '2.0/sp2'
    }
)

nitrowifi_dep = dependency('NitroWiFi',
    default_options: {
        'mwrap_sdk': '2.0/sp1p2',
        'sp1p3_conditionals': true
    }
)

nitrodwc_dep = dependency('NitroDWC',
    default_options: {
        'mwrap_sdk': '2.0/sp2p2'
    }
)

libsyscall_dep = dependency('libsyscall')


############################################################
###                        TOOLS                         ###
############################################################
subdir('tools')


############################################################
###                      SPEC FILES                      ###
############################################################
subdir('ranger2.us')


############################################################
###                     FILE SYSTEM                      ###
############################################################
subdir('res')

# Phony-like target to build all generated data files
alias_target('data', nitrofs_files)

############################################################
###                     ARM9 BINARY                      ###
############################################################
subdir('src')
subdir('asm')

main = executable('main',
    sources: [
        pokeranger2_cxx,
        pokeranger2_asm,
    ],
    c_args: pokeranger2_args,
    cpp_args: pokeranger2_args,
    nasm_args: asm_args,
    cpp_pch: 'include/pch/global_pch.hpp',
    include_directories: public_includes,
    dependencies: [
        nitrosdk_dep,
        nitrosystem_dep,
        nitrowifi_dep,
        nitrodwc_dep,
        libsyscall_dep,
    ],
    link_args: [
        link_args,
        'ranger2.us/main.lcf'
    ],
    link_depends: main_lcf,
    native: false
)


############################################################
###                    ARM7 BINARIES                     ###
############################################################
subdir('sub')


############################################################
###                        DS ROM                        ###
############################################################
pokeranger2_nds = custom_target('pokeranger2.us.nds',
    output: 'pokeranger2.us.nds',
    input: [
        main,
        rom_header_template,
        icon_png,
        arm7_bin,
        arm7_defs_bin,
        nitrofs_files
    ],
    command : [
        nitrorom_exe,
        'pack',
        '-DHEADER_TEMPLATE=@INPUT1@', # rom_header_template
        '-DICON_PNG=@INPUT2@',        # icon_png
        '-DARM7_STATIC=@INPUT3@',     # ichneumon_sub
        '-DARM7_DEFINE=@INPUT4@',     # ichneumon_sub_defs
        '--output=@OUTPUT0@',         # pokeplatinum.us.nds
        rom_ini,
        filesys_csv,
    ],
    build_by_default: true
)

############################################################
###                   GDB HELPERS                        ###
############################################################
nef_fixer = custom_target('debug.nef',
    output: [
        'debug.nef'
    ],
    input: [
        main
    ],
    command : [
        nef_fixer_py, '@INPUT@', '@OUTPUT@'
    ]
)

ovly_mapper = custom_target('overlay.map',
    output: [
        'overlay.map'
    ],
    input: [
        main_lsf
    ],
    command : [
        overlay_mapper_py, '@INPUT@', '@OUTPUT@'
    ]
)


############################################################
###                        TESTS                         ###
############################################################
sha1sum = find_program(['sha1sum', 'shasum'], native: true)

test('SBIN Checksums',
    sha1sum,
    args: ['-c', '--quiet', sbins_sha1]
)

test('Filesystem Checksums',
    sha1sum,
    args: ['-c', '--quiet', filesys_sha1]
)

test('ROM Checksum',
    sha1sum,
    args: ['-c', '--quiet', rom_sha1]
)


############################################################
###                       POSTCONF                       ###
############################################################
meson.add_postconf_script(postconf_py)
