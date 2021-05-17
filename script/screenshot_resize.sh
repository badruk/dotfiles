#!/bin/bash

# toggles xscreenshooter and saves the file in $target

target=~/Pictures/screenshots
mkdir -p $target
filename=$(date +scrn%Y%m%d%H%M%S.png)
path=$target/$filename
xfce4-screenshooter -c -r -o  cat > $path

# if esc is pressed during the process an empty file would be saved in the folder
# by eliminating all files 

find $target -size 0 -print -delete