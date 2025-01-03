#!/bin/bash
#echo "Enter a number:"
#read num
#echo “The number is: $num”

#=======================================

echo -n "Enter your name: "
read name
echo -n "Enter your location: "
read loc

#Below option -s is used to hide the password at the time of typing
read -s -p 'Enter your password:' pass

echo -e "\nYour Name is = $name\nYour Location is =$loc\nYour Password = $pass "
