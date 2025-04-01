subdir('battle')
subdir('uppict')
subdir('sendbin')
subdir('interface')
subdir('pokeOBJ')
subdir('title')
subdir('encyclo')
subdir('target')
subdir('opening')
subdir('effect')
subdir('message')
subdir('field')
subdir('param')
subdir('Script')
subdir('system')
subdir('poke')
subdir('eventicon')
subdir('ending')
subdir('menu')
subdir('targetOBJ')
subdir('font')
subdir('Sound')
subdir('event')
subdir('npc')
subdir('player')

prebuilt_files = [
    'disk_break_LZ.bin',
    'battle_line01.NCBR',
    'shadow.NCBR',
    'battle_disk01_LZ.bin',
    'battle_line01.NCLR',
    'shadow.NCLR',
    'cursor_LZ.bin',
    'disk02_LZ.bin',
]

foreach f : prebuilt_files
    nitrofs_files += fs.copyfile(f)
endforeach
