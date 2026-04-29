asm_args = [
    '-proc', 'arm5TE',
    '-16',
    '-gccinc'
]

libdwcnd_ranger2 = static_library('dwcnd_ranger2',
    sources: 'asm/libdwcnd.s',
    nasm_args: asm_args,
    pic: false,
    dependencies: [nitrosdk_dep, nitrosystem_dep, nitrowifi_dep]
)

nitrodwc_ranger2_dep = declare_dependency(
    link_with: [libdwcnd_ranger2]
)
