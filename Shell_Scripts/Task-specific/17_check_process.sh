#!/bin/bash

read -p "Enter process name: " process

if pgrep $process > /dev/null
then
echo "Process is running."
else
echo "Process is not running."
fi
