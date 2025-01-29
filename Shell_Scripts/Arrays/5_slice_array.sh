#!/bin/bash

arr=(24 27 84 11 99)

echo "Given array: ${arr[*]}"
read -p "Enter 1st index of slice: " index1
read -p "Enter 2nd index of slice: " index2
sliced_arr=("${arr[@]:$index1:$index2}")
echo "The sliced array: ${sliced_arr[@]}"
