#!/bin/bash

student=(Ramu Raju Rahul Rama Ravan)
echo '${student[0]} = ' ${student[0]}
echo '${student[1]} = ' ${student[1]}
echo '${student[*]} = ' ${student[*]}
echo '${student[@]} = ' ${student[@]}
echo '${#student[@]} = ' ${#student[@]}
echo '${student[*]:2:3} = ' ${student[*]:2:3}

# To get the range of values then the syntax is 
#
#  ${student[*]:x:y}
#  X- Starting index from where you need the values
#  y- Number of values from X index
