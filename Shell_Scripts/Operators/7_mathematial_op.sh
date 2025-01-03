#!/bin/bash

read -p "Enter a number:" num1
read -p "Enter a smaller number:" num2

echo "Addition: $(($num1 + $num2))"
echo "Subtraction: $(($num1 - $num2))"
echo "Multiplication: $(($num1 * $num2))"
echo "Division: $(($num1 / $num2))"
