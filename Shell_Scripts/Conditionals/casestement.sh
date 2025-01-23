#!/bin/bash


echo "enter a fruit name"
read fruit
#fruit="apple"

case $fruit in
    "apple")
        echo "This is a red fruit."
        ;;
    "banana")
        echo "This is a yellow fruit."
        ;;
    "orange")
        echo "This is an orange fruit."
        ;;
    "mango") "This is a orange and yello fruit."
	;;
    *)
        echo "Unknown fruit."
        ;;
esac
