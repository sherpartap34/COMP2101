#!/bin/bash
#
# this script rolls a six-sided die
#

# Task: Improve this script by making it roll as many dice as there are letters in your first name, instead of just one

# roll the dice and display the result
echo "
Rolling...
$(( RANDOM % 6 + 1)) rolled
"
# Variable Storing my firstName
firstName=Sherpartap

# Loop running from 1 to number of letters in firstName 
for((i=1;i<=${#firstName};i++))
do
# printing number of Rolling and the number rolled
echo "
$i Rolling...
$(( RANDOM % 6 + 1)) rolled
"
done
