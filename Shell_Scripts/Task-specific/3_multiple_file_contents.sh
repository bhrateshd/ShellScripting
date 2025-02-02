#!/bin/bash

read -p "Enter the file names: " files
IFS=' ' read -ra array <<< "$files"
for file in "${array[@]}"
do
if [ -e "$file" ]; then
echo "Contents of $file:"
cat "$file"
else
echo "Error: $file does not exist"
fi
done
