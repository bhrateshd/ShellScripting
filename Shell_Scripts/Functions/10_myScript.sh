#!/bin/bash
#function inside function

arithmatic()
{
	echo "Enter two numbers"
	read n1
	read n2
	echo "Choose operation: A, S, M, D"
	read ch
	source myFunction.sh
	compute $n1 $n2 $ch
	echo "Script Completed successfully"
}

arithmatic
