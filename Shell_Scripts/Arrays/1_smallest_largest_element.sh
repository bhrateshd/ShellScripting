#!/bin/bash

arr=(24 27 84 11 99)

echo "Given array: ${arr[*]}"
s=100000
l=0
for num in "${arr[@]}"
do
if [ $num -lt $s ]
then
s=$num
fi
if [ $num -gt $l ]
then
l=$num
fi
done

echo "The smallest element: $s"
echo "The largest: $l"
