asm_args = [
    '-proc', 'arm5TE',
    '-16',
    '-gccinc'
]

libs_deps = [nitrosdk_dep, nitrosystem_dep, nitrowifi_dep]

libdwcnd_ranger2 = static_library('dwcnd_ranger2',
    sources: 'asm/libdwcnd.s',
    nasm_args: asm_args,
    pic: false,
    dependencies: libs_deps,
)

libdwcnhttp_ranger2 = static_library('dwcnhttp_ranger2',
    sources: 'asm/libdwcnhttp.s',
    nasm_args: asm_args,
    pic: false,
    dependencies: libs_deps,
)

nitrodwc_ranger2_dep = declare_dependency(
    link_with: [
        libdwcnd_ranger2,
        libdwcnhttp_ranger2,
    ]
)
