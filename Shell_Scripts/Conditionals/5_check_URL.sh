#!/bin/bash

read -p "Enter a URL: " url
if [[ $url =~ ^(http|https)://[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]]
then
echo " This is a valid URL!"
else
echo "This is not a valid URL!"
fi
