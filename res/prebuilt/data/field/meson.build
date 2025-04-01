subdir('character')
subdir('effect')
subdir('map')

prebuilt_files = [
    'fielddata.bin',
]

foreach f : prebuilt_files
    nitrofs_files += fs.copyfile(f)
endforeach
