#!/bin/bash
#We ask for the first and second number and operator
read -p "Enter the first number: " n1
read -p "Enter the second number: " n2
read -p "Enter an operatorv from + - * /: " operator
#We compare operator and do the operation
if [ "$operator" == "+" ]
then
	res=$(( n1+n2 ))
elif [ "$operator" == "-" ]
then
	res=$(( n1-n2 ))

elif [ "$operator" == "*" ]
then
	res=$(( n1*n2 ))
elif [ "$operator" == "/" ]
then
	res=$(( n1/n2 ))
fi

#At the end, we show the final result
echo "The result of $n1 $operator $n2 is $res"

