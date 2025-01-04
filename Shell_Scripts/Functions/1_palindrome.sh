#!/bin/bash

Palindrome () {

s=$1
if [ "$(echo $s | rev)" == "$str" ]
then
echo "The string is a Palindrome"
else
echo "The string is not a palindrome"
fi
}
read -p "Enter a string: " str
Palindrome "$str"
