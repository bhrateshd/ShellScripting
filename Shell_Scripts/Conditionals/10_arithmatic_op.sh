#!/bin/bash

read -p 'Enter val1: ' a
if [ -z "$a" ]; then
	echo "Invalid input"
	exit 1
fi

read -p 'Enter val2: ' b
if [ -z "$b" ]; then
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



:<< 'EOF'
case $op in
	ADD) echo "Addition = $(($a+$b))"
		;;
	SUB) echo "Subtact = $(($a-$b))" ;;
	MUL) echo "Multiply = $(($a*$b))" ;;
	DIV) echo "Divide = $(($a/$b))" ;;
	*) echo "Invalid operator. Please use ADD, SUB, MUL, or DIV." ;;

esac


#echo "Addition = $(($a+$b))"
#echo "Subtract = $(($a-$b))"
#echo "Multiply = $(($a*$b))"
#echo "Divide = $(($a/$b))"
EOF
