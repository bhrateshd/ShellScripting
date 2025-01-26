#!/bin/bash
for num in 2 5 1 7 6 9
do 
	echo "Printing number"
	if [ $num -eq 7 ]
	then
		#echo "Your no is $num"
		continue
	fi
	echo $num
done

