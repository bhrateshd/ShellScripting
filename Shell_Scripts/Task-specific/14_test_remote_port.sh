#!/bin/bash

read -p "Enter host address:" HOST
read -p "Enter port number:" PORT

nc -z -v -w5 "$HOST" "$PORT"

if [ $? -eq 0 ]; then
echo "----------------------------------------------"
echo "Port $PORT on $HOST is open"
echo "----------------------------------------------"
else
echo "----------------------------------------------"
echo "Port $PORT on $HOST is closed"
echo "----------------------------------------------"
fi
