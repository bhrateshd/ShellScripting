#!/bin/bash

read -p "Enter remote host IP address:" ip

ping -c 1 $ip
if [ $? -eq 0 ]
then
echo "-----------------------"
echo "Host is up!"
echo "-----------------------"
else
echo "-----------------------"
echo "Host is down!"
echo "-----------------------"
fi
