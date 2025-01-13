#!/bin/bash

str="linuxsimply!!"
cap_str=$(echo "${str:0:1}" | tr '[:lower:]' '[:upper:]')${str:1}
echo "The capitalized word is: $cap_str"
