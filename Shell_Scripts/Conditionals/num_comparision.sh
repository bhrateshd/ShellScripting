#!/bin/bash

USAGE(){
	echo "Usage:: $(basename $0) val1 val2 operator"
	echo "Operators = ADD|SUB|MUL|DIV"
	exit 1
}
a=$1
b=$2
op=$3

if [ $# -ne 3 ]; then
	USAGE
fi

op=${op^^} #This will convert the characters in OP to uppercase.

# op=${op,,}: Converts all characters in OP to lowercase.
# If you're using a modern Bash version (4.0+), you can convert the input directly to uppercase using parameter expansion:
# else use below
#Here below we are converting lower charecters in to upper
# op=$(echo $op| tr [:lower:] [:upper:])


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
