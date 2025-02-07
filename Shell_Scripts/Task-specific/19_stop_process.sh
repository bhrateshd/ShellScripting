#!/bin/bash

read -p "Enter process name: " process

if pgrep $process > /dev/null
then
pkill $process
echo "The Process $process has stopped."
else
echo "The Process $process is not running."
fi
