#!/bin/bash

Area () {
radius=$1
area=$(echo "scale=2; 3.14 * $radius * $radius" | bc)
echo "Area of a circle with radius $radius is $area."
}

read -p "Enter radius of the circle:" r
Area $r
