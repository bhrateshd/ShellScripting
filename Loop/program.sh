#!/bin/bash
ls > dirContents.txt
filename=dirContents.txt
while read line
do
        if [ -d $line ]
	then 
		echo "Complaining $line/$line.cpp"
		g++ $line/$line.cpp
		./a.out
		echo "-----------------"
	fi
done < $filename

