#!/bin/bash
read -p "Enter a File Name:" fname
if [ ! -f $fname ]
then
echo "The File $fname does not exist!"
exit 1
fi
echo "The File $fname exists."
