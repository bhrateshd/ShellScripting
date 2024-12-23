#!/bin/bash
#inorder to see whether the host(ip) is alive or not alive
clear
for host in $*
do
	ping -c2 $host &> /dev/null
	if [ $? = 0 ]; then
		printf "%-30s is alive \n " $host
	else
		printf "%-30s is not alive \n" $host
	fi
done
