#!/bin/bash

echo "Enter an array of numbers (separated by space):"

read -a arr
sum=0
for i in "${arr[@]}"
do
sum=$((sum+i))
done
avg=$((sum/${#arr[@]}))
echo "Average of the array elements: $avg"
