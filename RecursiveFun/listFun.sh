#!/bin/bash
listR()
{
	cd $1
	echo -e "\n Directory: $1"
	ls --color=auto
	list='ls'
	for file in $list
	do
		if [ -d $file ]
		then
			listR $file
			cd ..
		fi
	done
}

listR .
