#!/bin/bash
# Accept two names from the user. if First name is not null then check wheather both the names are same and print appropriate messages.
echo "Enter first name"
read fname
echo "Enter second name"
read lname
if [ $fname ]
then 
	if [ $fname = $lname ]
	then
		echo "First and last names are same"
	else 
		echo "First and last names are different"
	fi
else 
	echo "First name is null"
fi
