#!/bin/bash

read -p "Enter a number: " num
temp=1
for (( i=1; i<=$num; i++ ))
do
temp=$((temp*i))
done
echo "The factorial of $num is: $temp"
