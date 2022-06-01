#!/bin/bash
#We iniciate forum to an empty string
forum=""
#While forum is different from GOOD, we repeat the question
while [ "$forum" != "GOOD" ]
do
	read -p "What do you think about or forum?: " forum
done
echo "Thanks for your comments ;)"
