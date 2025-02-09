#!/bin/bash

read -p "Enter the file name: " file
read -p "Enter new permissions in Absolute Mode: " permissions

if [ -f $file ]; then
sudo chmod $permissions $file
echo "Permissions for the file $file has been changed!"
else
echo "Error! The file $file does not exist."
fi
