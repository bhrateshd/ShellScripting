#!/bin/bash
USER="root"
SERVER_NAME="172.31.30.142" #ip_address_of-server

echo "The date command output on the server: $SERVER_NAME"
sshpass -f pass ssh -o StrictHostKeyChecking=No $USER@SERVER_NAME "date"
echo "-----------------------------------------------------"

echo "The uptime command output on the server: $SERVER_NAME"
sshpass -f pass ssh -o StrictHostKeyChecking=No $USER@SERVER_NAME "uptime"
echo "-----------------------------------------------------"

echo "The free -m command output on the server: $SERVER_NAME"
sshpass -f pass ssh -o StrictHostKeyChecking=No $USER@SERVER_NAME "free -m"
echo "-----------------------------------------------------"

