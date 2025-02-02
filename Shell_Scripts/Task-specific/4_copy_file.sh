#!/bin/bash

read -p "Enter the file name: " file
read -p "Enter destination path:" dest

if [ -e "$file" ]; then
cp $file $dest
file_location=$(readlink -f $dest)
echo "A copy of $file is now located att: $file_location"
else
echo "Error: $file does not exist"
fi
