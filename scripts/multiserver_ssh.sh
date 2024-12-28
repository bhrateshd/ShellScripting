#!/bin/bash
USER="root"
SERVER_NAME="172.31.30.142" #ip_address_of-server

<< my_com
echo "The date command output on the server: $SERVER_NAME"
sshpass -f pass ssh -o StrictHostKeyChecking=No $USER@SERVER_NAME "date"
echo "-----------------------------------------------------"

echo "The uptime command output on the server: $SERVER_NAME"
sshpass -f pass ssh -o StrictHostKeyChecking=No $USER@SERVER_NAME "uptime"
echo "-----------------------------------------------------"

echo "The free -m command output on the server: $SERVER_NAME"
sshpass -f pass ssh -o StrictHostKeyChecking=No $USER@SERVER_NAME "free -m"
echo "
my_com

for each_ser in $(cat remote_server.txt)
do
	echo "Executing cmds on $each_ser"
	echo "==========================="
	for each_cmd in date uptime "free -m"
	do
		echo "The $each_cmd command output on the server; $each_ser"
		sshpass -f pass ssh -o StrictHostChecking=No $USER@each_ser "$each_cmd"
		#ssh -o StrictHostKeyChecking=No automation@each_ser "$each_cmd"
		echo "---------------------------------------------"
	done
done
