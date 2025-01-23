#!/bin/bash
#store default IFS

old_IFS= $IFS
IFS=,
read val1 val2 val3 <<< "5,60,70"
echo 1st value: $val1
echo 2nd value: $val2
echo 3rd value: $val3
#restore default IFS
IFS= $old_IFS;
