#!/bin/bash

read -p "Tell me user that you want to obtain home directory: " user
#First we check if there is only one match in /etc/passwd usernames (field1)
#We obtain 1,6 fields (user,home), filter by user and then with
#wc-l count the number of lines obtained
nLines=`cut -d":" -f 1,6 /etc/passwd | grep $user| wc -l`
echo "$nLines found with that search"
if [ $nLines -eq 1 ]; then 
	#We select only fields 1,6 (user,home)  of original /etc/passwd
	#then we filter the user in /etc/passwd
	#and then we select field number 2 (home in filtered file)
	resHome=`cut -d":" -f 1,6 /etc/passwd | grep $user | cut -d":" -f 2`
	echo "Home: $resHome"
elif [ $nLines -eq 0 ]; then
	echo "We could not find username $user"
else
	echo "There are multiple entries for username $user"
fi
