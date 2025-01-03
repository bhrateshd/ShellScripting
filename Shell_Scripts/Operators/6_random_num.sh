#!/bin/bash

read -p "Enter minimum range:" min
read -p "Enter maximum range:" max

r_num=$(( $RANDOM % ($max - $min + 1) + $min ))
echo "Random Number: $r_num"
