#!/bin/bash

read -p "Enter the directory name: " dir
#adding the comment for just testing
if [ -d $dir ]; then
chmod u+rwx $dir
echo "Directory permissions have been updated!"
else
echo "Error! The directory $dir does not exist."
fi

