#!/bin/bash
while read ser user pass cmd1 cmd2

do 
	echo "Executing $cmd1 on $ser with user as $user and password $pass"
	sshpass -p $pass ssh -n -o StrictHostChecking=No $user@ser "$cmd1"
	echo "Executing $cmd2 on $ser with user as $user and password $pass"
        sshpass -p $pass ssh -n -o StrictHostChecking=No $user@ser "$cmd2"
	echo "----------------------------------------------------------"

done < servers_info.txt

