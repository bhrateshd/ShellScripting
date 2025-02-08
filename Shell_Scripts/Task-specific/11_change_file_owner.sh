#!/bin/bash

read -p "Enter the file name: " file
read -p "Enter file owner name: " owner

if [ -f $file ]; then
sudo chown $owner $file
echo "Changed file owner to $owner!"
else
echo "Error! The file $file does not exist."
fi
