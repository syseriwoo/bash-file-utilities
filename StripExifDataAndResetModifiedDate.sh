#!/bin/bash

# Strips EXIF data from file
# Preserves filename, which MUST be named according to the `yyyyMMdd*` date pattern
# Sets CreatedDate & ModifiedDate according to filename, ignoring `hhmmss`.

for i in *; do
    mogrify -strip $i

    # Sets file according to US format: `MM/dd/yyyy 00:00:00`
    # You may modify this based on your operating systems' file date pattern settings
    SetFile -d "${i:4:2}/${i:6:2}/${i:0:4} 00:00:00" -m "${i:4:2}/${i:6:2}/${i:0:4} 00:00:00" "$i";
    
done