#!/bin/bash
myFun()
{
	typeset num1=5
	num2=7
	echo "Inside function: $num1, $num2"
}
num1=1
num2=2
echo "Before functioncall: $num1, $num2"
myFun
echo "After function call: $num1, $num2"

