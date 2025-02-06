#!/bin/bash

read -p "Enter the file name: " file
read -p "Enter new file name: " new_file

if [ -f $file ]
then
mv "$file" "$new_file"
echo "The file $file has been renamed as $new_file!"
else
echo "Error! The file $file does not exist."
fi
