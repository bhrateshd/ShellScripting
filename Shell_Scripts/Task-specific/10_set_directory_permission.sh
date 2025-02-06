#!/bin/bash

read -p "Enter the directory name: " dir

if [ -d $dir ]; then
chmod u+rwx $dir
echo "Directory permissions have been updated!"
else
echo "Error! The directory $dir does not exist."
fi
