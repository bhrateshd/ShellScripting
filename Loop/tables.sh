#!/bin/bash
read number
counter=1
while [ $counter -le 10 ]
do 
	multiply=$(($number*$counter))
	echo "$number x $counter = $multiply"
	counter=$((counter+1))
done
