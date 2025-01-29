#!/bin/bash

arr=(24 27 84 11 99)

echo "Given array: ${arr[*]}"
read -p "Enter an element to remove: " val
arr=("${arr[@]/$val}")
echo "Resultant array: ${arr[*]}"
