#!/bin/bash

read -p "Enter a host address:" HOST

if ping -q -c 1 -W 1 $HOST >/dev/null; then
echo "----------------------------------------------"
echo "Internet connection is up"
echo "----------------------------------------------"
else
echo "----------------------------------------------"
echo "Internet connection is down"
echo "----------------------------------------------"
fi
