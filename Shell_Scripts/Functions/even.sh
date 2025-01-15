#!/bin/bash
isEven()
{
	if [ $(($1%2)) -eq 0 ]
	then 
		return 0
	else
		return 1
	fi
}
read num
if isEven num
then
	echo "It's an even number"
else
	echo "It's an odd number"
fi
