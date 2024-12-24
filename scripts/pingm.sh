#!/bin/bash
#inorder to see whether the host(ip) is alive or not alive
for n in 1 2 3 4 6 8 10 111; do
host=192.168.0.$n
ping -c2 $host &> /dev/null
if [ $? = 0 ]; then
printf "%-30s is alive \n " $host
else
printf "%-30s is not alive \n" $host
fi
done

