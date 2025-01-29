#!/bin/bash

# Read the three sides of the triangle
read -p "Enter the first side: " a
read -p "Enter the second side: " b
read -p "Enter the third side: " c

# Check the triangle inequality
if [ $(($a + $b)) -le $c ] || [ $(($a + $c)) -le $b ] || [ $(($b + $c)) -le $a ]; then
    echo "Invalid triangle: The sum of any two sides must be greater than the third."
    exit 1
fi

# Determine the type of triangle
if [ "$a" -eq "$b" ] && [ "$b" -eq "$c" ]; then
    echo "EQUILATERAL"
elif [ "$a" -eq "$b" ] || [ "$b" -eq "$c" ] || [ "$a" -eq "$c" ]; then
    echo "ISOSCELES"
else
    echo "SCALENE"
fi

