#!/bin/bash

echo "enter your age"
read age

if [[ $age -gt 25 ]]; then
	echo "your eligable for drinking"
	
else
	echo "your not eligable for entry"
fi
