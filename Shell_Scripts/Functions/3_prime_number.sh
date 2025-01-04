#!/bin/bash

Prime () {
num=$1
if [ $num -lt 2 ]
then
echo "The number $num is Not Prime"
return
fi
for (( i=2; i<=$num/2; i++ ))
do
if [ $((num%i)) -eq 0 ]
then
echo "The number $num is Not Prime"
return
fi
done
echo "The number $num is Prime"
}
read -p "Enter a number: " num
Prime "$num"
