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
c_args = [
    '-proc', 'arm946e',
    '-enum', 'int',
    '-lang', 'c99',
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
    '-DPOKERANGER2_GENERATED_ENUM',
]

if get_option('gdb_debugging')
    c_args += [
        '-O1,p',
        '-inline', 'off'
    ]
else
    c_args += '-O4,p'
endif

add_global_arguments(c_args,
    language: 'c',
    native: false
)

pokeranger2_args = [
    '-DPM_KEEP_ASSERTS',
    '-DGAME_VERSION=VERSION_RANGER',
    '-DGAME_LANGUAGE=ENGLISH'
]

if get_option('gdb_debugging')
    pokeranger2_args += '-DGDB_DEBUGGING'
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
        'mwrap_ver': '2.0/sp1p2',
        'sp1p3_conditionals': true
    }
)

nitrosystem_dep = dependency('NitroSystem',
    default_options: {
        'mwrap_ver': '2.0/sp2'
    }
)

nitrowifi_dep = dependency('NitroWiFi',
    default_options: {
        'mwrap_ver': '2.0/sp1p2',
        'sp1p3_conditionals': true
    }
)

nitrodwc_dep = dependency('NitroDWC',
    default_options: {
        'mwrap_ver': '2.0/sp2p2',
        'link_ppwlobby': true
    }
)

libvct_dep = dependency('libvct')
libcrypto_dep = dependency('libcrypto')
libsyscall_dep = dependency('libsyscall')
ppwlobby_dep = dependency('ppwlobby')


############################################################
###                        TOOLS                         ###
############################################################
subdir('tools')


############################################################
###                      SPEC FILES                      ###
############################################################
subdir('ranger2.us')


############################################################
###                  INTERNAL LIBRARIES                  ###
############################################################
subdir('lib')


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
        pokeranger2_c,
        pokeranger2_asm,
    ],
    c_args: [
        pokeranger2_args,
        '-thumb'
    ],
    nasm_args: asm_args,
    include_directories: [
        public_includes,
        libgds_public_includes,
        # TODO: Remove me
        # libspl_public_includes,
    ],
    dependencies: [
        # TODO: Check this
        nitrosdk_dep,
        # nitrosystem_dep,
        nitrowifi_dep,
        nitrodwc_dep,
        # libvct_dep,
        # libcrypto_dep,
        libsyscall_dep,
        # ppwlobby_dep
    ],
    link_with: [
        libgds,
        # TODO: Remove me
        # libspl
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
    output: [
        'pokeranger2.us.nds',
        'pokeranger2.us.nlf'
    ],
    input: [
        main,
        banner_bnr,
        rom_header_template,
        rom_rsf,
        arm7_bin,
        arm7_defs_bin,
        fixrom_exe,
        nitrofs_files # Make sure this is always listed last
    ],
    command : [
        makerom_exe,
        '-DTITLE_NAME=POKE RANGER2',
        '-DBNR=@INPUT1@',
        '-DHEADER_TEMPLATE=@INPUT2@',
        '-DARM7=@INPUT4@',
        '-DARM7_DEFS=@INPUT5@',
        '@INPUT3@',
        '@OUTPUT0@',
        '@OUTPUT1@',
        '&&','sh', '-c',
        '@INPUT6@ @OUTPUT0@ --secure-crc 0x4A05 --game-code YP2E'
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
