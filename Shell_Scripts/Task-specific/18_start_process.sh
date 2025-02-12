#!/bin/bash

read -p "Enter process name: " process

if ! pgrep $process > /dev/null
then
/path/to/process_name &
echo "The Process $process has now started."
else
echo "The Process is already running."
fi
