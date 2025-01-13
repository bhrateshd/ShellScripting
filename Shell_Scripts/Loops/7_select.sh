#!/bin/bash

read -p 'Enter val1:' a
read -p 'Enter val2:' b

PS3='Select an Option> '
select op in ADD SUB MUL DIV; do
	case $op in
		ADD) echo "Addition = $((a+b))";;
		SUB) echo "Substraction = $((a-b))";;
		MUL) echo "Multiply = $((a*b))";;
		DIV) echo "Division = $(($a/$b))";;
	esac
	sleep 2
done
