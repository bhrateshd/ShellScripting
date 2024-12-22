#!/bin/bash

read -p "Enter any single digit number": choice

case $choice in
	1) echo "You entered one"
		;;
	3) echo "You entered three"
		;;
	4) echo "your input is 4"
		;;
	8) echo "your input is 8"
		;;
	9) echo "Now this is 9th"
		;;
	*) echo "your input is not matching any case"
		;;
esac
#Bhai ne bola krne ka to krne ka
#Another Push

