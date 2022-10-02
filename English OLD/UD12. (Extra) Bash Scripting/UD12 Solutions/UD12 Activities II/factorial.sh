#!/bin/bash

read -p "Please enter a number to obtain its factorial" num

#Starts to compare by 1
i=1
result=1
while [ $i -le $num ]
do
	result=$((result*i))
	i=$((i+1))
done
echo "The factorial of $num is $result"
