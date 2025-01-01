#!/bin/bash

arr=(24 27 84 11 99)

echo "Given array: ${arr[*]}"
read -p "Enter an element to insert: " new_val
read -p "Enter the index to insert the element: " index
arr=("${arr[@]:0:$index}" "$new_val" "${arr[@]:$index}")
echo "The updated array: ${arr[@]}"
