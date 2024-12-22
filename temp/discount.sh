#!/bin/bash
#If bill is greater than 1000 then give discount of 100 else give discount of 50

echo "Enter bill amount"
read bill
if [ $bill -gt 1000 ]
then
	bill=$(($bill-100))
else
	bill=$(($bill-50))
fi
echo "Your bill is: $bill"
