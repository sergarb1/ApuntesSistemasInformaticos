#!/bin/bash
#For loop that starts in 0 and ends in 70
for (( i=0; i<=70; i++ ))
do
    #if i is less than 10, we add a 0. Else we don't add a 0.
    if [ $i -lt 10 ]
    then 
        mkdir 0$i
    else
        mkdir $i
    fi
done



