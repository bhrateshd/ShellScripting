#!/bin/bash

read -p "Enter the 1st file name: " file1
read -p "Enter the 2nd file name: " file2

if [ ! -f $file1 ] || [ ! -f $file2 ]
then
echo "Error! One of the files does not exists."
exit 1
fi
if cmp -s "$file1" "$file2"
then
echo "The Files $file1 and $file2 are identical."
else
echo "The Files $file1 and $file2 are different."
fi
