#!/bin/bash

#obtain number of logged people
#w obtains who is logged (a login per line)
# wc -l counts number of lines
res=`w | wc -l`
#We substract two lines of command w beacuse they are headers
res=$((res-2))
echo "There are $res users logged"

