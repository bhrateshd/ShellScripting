#!/bin/bash
# Bill              Discount
# >5OO0             500
# 4001 - 5000       400
# 3001 - 4000       300
# 3000 or less      50
#
echo "Enter bill amount"
read bill
if [ $bill -gt 5000 ]
then
	bill=$(($bill-500))
elif [ $bill -gt 4000 -a $bill -le 5000 ]
then 
	bill=$(($bill-400))
elif [ $bill -gt 3000 -a $bill -le 4000 ]
then
	bill=$(($bill-300))
else
	bill=$(($bill-50))
fi

echo "Your bill is: $bill"

