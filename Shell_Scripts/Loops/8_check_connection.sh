#!/bin/bash

read -p 'Enter filename: ' file
if [ ! -f $file ]; then 
	echo "File not exist"
	exit 1
fi

for server in $(cat $file); do
	ping $server &>/dev/null
	if [ $? -eq 0 ]; then
		ssh $server uptime
	else
		echo "Ping Failed :: $server"
		continue
	fi
done
