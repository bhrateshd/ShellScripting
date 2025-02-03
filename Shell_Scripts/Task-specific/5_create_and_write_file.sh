#!/bin/bash

read -p "Enter the file name: " file
echo "Enter text to write:"
read text
echo "$text" > "$file"
echo "-----------------------------------"
echo "The File $file is created!"
