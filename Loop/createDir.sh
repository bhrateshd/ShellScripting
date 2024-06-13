#!/bin/bash
#list=(d1 d2 d3)
#for dir in ${list[*]}
for dir in $*
do
	mkdir $dir
done

