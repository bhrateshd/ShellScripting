#!/bin/bash

read -p "Enter a File Name: " dir
if [ ! -d $dir ]
then
echo "The directory $dir does not exist!"
exit 1
fi
echo "The directory $dir exists."
