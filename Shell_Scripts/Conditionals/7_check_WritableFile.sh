#!/bin/bash
read -p "Enter a File Name:" fname
if [ -w $fname ]
then
echo "The File $fname is writable."
else
echo "The File $fname is not writable."
fi
