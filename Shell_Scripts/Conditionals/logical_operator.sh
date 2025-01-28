#!/bin/bash

read -p 'Enter val1: ' a
read -p 'Enter val2: ' b

#Using logical operators here
if [ -z "$a"-0 -o -z "$b" ]; then # logical OR -o
        echo "Invalid input"
        exit 1
fi


#This reads the operator (e.g., ADD, SUB, MUL, DIV) and stores it in the variable op
read -p 'Enter operator{ADD|SUB|MUL|DIV}: ' op

#Here below we are converting lower charecters in to upper
op=$(echo $op| tr [:lower:] [:upper:])

if [ "$op" = ADD ]; then
	echo "Addition = $(($a+$b))"
elif [ "$op" = SUB ]; then
	echo "Substract = $(($a-$b))"
elif [ "$op" = MUL ]; then
        echo "Multiply = $(($a*$b))"
elif [ "$op" = DIV ]; then
        echo "Devide = $(($a/$b))"
else
	echo "Invalid Operator"
	exit 1
fi


