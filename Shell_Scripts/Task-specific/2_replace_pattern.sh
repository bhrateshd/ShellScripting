#!/bin/bash

read -p "Enter filename: " filename
read -p "Enter a pattern to replace: " pattern
read -p "Enter new pattern: " new_pattern
grep -q $pattern $filename
if [ $? -eq 0 ]; then
sed -i "s/$pattern/$new_pattern/g" $filename
echo "Updated Lines: "
grep -w -n $new_pattern $filename
else
echo "Error! Pattern did not match."
fi
