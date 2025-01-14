#!/bin/bash
#Arguments: number1 number2 Operator
compute()
{
	if [ $3 = 'A' ]
	then
		echo "$1 + $2 = $(($1+$2))"
	elif [ $3 = 'S' ]
	then
		echo "$1 - $2 = $(($1-$2))"
	elif [ $3 = 'M' ]
	then
		echo "$1 * $2 = $(($1*$2))"
	elif [ $3 = 'D' ]
	then
		echo "$1 / $2 = $(($1/$2))"
	else
		echo"Invalid Operator"
	fi
}
