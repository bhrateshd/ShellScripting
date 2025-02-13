#!/bin/bash

read -p "Enter process name: " process

pid=$(pgrep -f $process)
if [ -n "$pid" ]; then
kill $pid
sleep 5
if pgrep -f $process> /dev/null; then
echo "Process did not exit properly, force killing..."
kill -9 $pid
fi
fi
process_path=$(which $process)
$process_path & echo "Process restarted."
