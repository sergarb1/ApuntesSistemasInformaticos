#!/bin/bash

read -p "Please enter a number to check if it is prime" num

#Starts to compare by 1 (later it will be add 1 at start of each loop)
i=1
#the limit number is num - 1
newnum=$((num-1))

#Use i*i that is esquivalent to i<sqrt(num)
while [ $((i*i)) -lt $newnum ]
do
	i=$((i+1))
	
	#if num module i is 0, it is divisible and it is not prime
	if [ $((num%i)) -eq 0 ]
	then
		echo "$num is not a prime number"
		#Finish the program
		exit
	fi
done
#If the program arrives there, the number is prime (no divisible number has been found)
echo "$num is a prime number "
