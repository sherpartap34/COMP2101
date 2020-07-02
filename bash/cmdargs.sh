#!/bin/bash
# This script demonstrates how the shift command works

# create an empty array to put the command line arguments into
myargs=()
# loop through the command line arguments
vMode=0
dMode=0
while [ $# -gt 0 ]; do
  # tell the user how many things are left on the command line
  echo "There are $# things left to process on the command line."
  # add whatever is in $1 to the myargs array
  myargs+=("$1")
  # tell the user what we did
  echo "Added \'$1\' to the arguments array"

# TASK 1: instead of just adding arguments to an array, use a case statement to recognize some options
#          Options to recognize: -h for help, -v for verbose mode, -d N for debug mode with N being a single digit number
#          If the help option is recognized, print out help for the command and exit
#          If the verbose option is recognized, set a variable to indicate verbose mode is on
#          If the debug optionis recognized, set a variable with the debug level from the number given after the -d on the command line
#             display an error if the user gave the -d option without a single digit number after it
#          Anything that wasn't recognized on the command line should still go into the myargs array

#Case statements
case $1 in -h)
	# print output for help
		echo "Use -v for verbose"
		echo "Use -d [level] for debug"
	exit
	;;
-v)
	# print  output for verbose mode
	echo "Verbose mode"
	vMode=1
	;;
	-d)
		# check for second argument with debug mode
	if [ -z $2 ];
	then
		echo "Define debug level. use -h for help"
	else
		# check if number provided is single digit
		if [ $2 -ge 0 ] && [ $2 -le 9 ];
		then
			dMode=1
			level=$2
			echo "Debug Mode on level $level"
			shift
		else
			echo "Use -h to check how to use debug mode"
		fi
	fi
	;;
	# for all other 
*)
	echo "Please Use -h for help. Unrecognized command found"
esac
  # each time through the loop, shift the arguments left
  # this decrements the argument count for us
  shift
  # tell the user we shifted things
  echo "Shifted command line, leaving $# things left to process."
  echo "--------------------------"
  # go back to the top of the loop to see if anything is left to work on
done
echo "Done"

# TASK2: display the settings and myargs contents
#         Tell the user if vebose mode is on
#         Tell the user if debug mode is on and if it is, what number it is set to
#         Print out the myargs array with a label

# print using variales
if [ $vMode -eq 1 ];
then
echo "Verbose mode is on"
else
	echo "Verbose mode is off"
fi
if [ $dMode -eq 1 ];
then
echo "Debug mode is on and set to $level"
else
        echo "Debug mode is off"
fi

echo "My args : ${myargs[@]}"
