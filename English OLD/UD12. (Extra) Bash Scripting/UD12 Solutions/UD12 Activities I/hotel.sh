#!/bin/bash

#Our protocol to manage the hotel is:
#Where N is room number
#Directory N not exists: available room
#Directory N without a C directory inside exists: room not available
#Directory N with a C directory inside exists: room available but not clean

#set option initially to zero
option=0
#loop while option not equals 6
while [ $option != 6 ]; do
	echo "================================================================================="
	echo "CEED HOTEL"
	echo "================================================================================="

	echo "1) check if a room is available:"
	echo "2) check if an available room is clean:"
	echo "3) set 'not available' a 'clean and available room':"
	echo "4) set 'available and not clean' a 'not available room':"
	echo "5) set 'available and clean' a 'not clean and available room':"
	echo "6) exit"

	read option

	#Check directories to observe what state has our room
	if [ $option -eq 1 ]; then
		read -p "Enter room number: " room
		if [ ! -d $room ]; then
			echo "Room $room is available and clean"
		elif [ -d $room && -d $room/C ]; then
			echo "Room $room is available but not clean"
		else
			echo "Room $room is not available but not clean"
		fi 
	#Check directories to observe what state has our room
	elif [ $option -eq 2 ]; then
		read -p  "Enter room number: " room
		if [ -d $room ]; then
			if [ -d $room/C ]; then
				echo "Room $room is not clean"
			else
				echo "Room $room is not available"
			fi
		else
			echo "Room $room is available and clean"
		fi 

	#Check directories to observe what state ha our room and modifiy its state
	elif [ $option -eq 3 ]; then
		read  -p "Enter room number: " room
		if [ ! -d $room ]; then
			#Create directory to make it not available
			mkdir $room
			echo "Room $room now is not available"
		else
			echo "Room $room wasn't available and clean"
		fi 


	#Check directories to observe what state ha our room and modifiy its state
	elif [ $option -eq 4 ]; then
		read  -p "Enter room number: " room
		if [ -d $room ]; then
			if [ -d $room/C ]; then
				echo "Room $room was available and not clean"
			else
				echo "Room $room now is available and clean"
				#Create C to make room not clean
				mkdir $room/C
			fi
		else
			echo "Room $room wasn't not available"
		fi 

	#Check directories to observe what state ha our room and modifiy its state
	elif [ $option -eq 5 ]; then
		read  -p "Enter room number: " room
		if [ -d $room ]; then
			if [ -d $room/C ]; then
				echo "Room $room now is clean and available"
				#Delete directory to make it available
				rm -rf $room
			else
				echo "Room $room was not available"
			fi
		else
			echo "Room $room was available and clean"
		fi 
	fi

done
