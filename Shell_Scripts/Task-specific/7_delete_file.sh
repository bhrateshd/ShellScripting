#!/bin/bash

read -p "Enter the file name for deletion: " file

if [ -f $file ]
then
rm $file
echo "The file $file deleted successfully!"
else
echo "Error! The file $file does not exist."
fi
