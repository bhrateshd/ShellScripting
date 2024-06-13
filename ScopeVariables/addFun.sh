#!/bin/bash
add()
{
	return $(($1+$2))
}
read num1
read num2
add $num1 $num2
echo "Addition of two numbers: $?"
