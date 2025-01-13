#!/bin/bash

Area() {
width=$1
height=$2
area=$(($width * $height))
echo “Area of the rectangle is: $area”
}

read -p "Enter height and width of the ractangle:" h w
Area $h $w
