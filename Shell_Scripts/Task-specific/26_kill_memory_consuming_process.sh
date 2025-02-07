#!/bin/bash

read -p "Enter memory usage threshold (in KB): " threshold

if [ "$(ps -eo pid,%mem | awk -v t=$threshold '$2 > t {print $1}' | wc -c)" -gt 0 ]; then
for pid in $(ps -eo pid,%mem | awk -v t=$threshold '$2 > t {print $1}')
do
kill $pid
done
echo "All processes consuming more than $threshold KB memory killed."
else
echo "There are no process consuming more than $threshold KB memory."
fi
