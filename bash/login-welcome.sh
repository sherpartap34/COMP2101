#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
#title="Overlord"
# user in myname
myname="$USER"
# multiple cases to set title
[ $(date +%w) -eq 0 ] && title="Engineer"
[ $(date +%w) -eq 1 ] && title="Doctor"
[ $(date +%w) -eq 2 ] && title="Proffessor"
[ $(date +%w) -eq 3 ] && title="Architect"
[ $(date +%w) -eq 4 ] && title="Consultant"
[ $(date +%w) -eq 5 ] && title="CEO"
[ $(date +%w) -eq 6 ] && title="Mister"
hostname="$(hostname)"

###############
# Main        #
###############
# variable store
variable="Welcome to planet $hostname, \"$title $myname!\" It is $(date '+%A') at $(date '+%I:%M') $(date '+%p')"

#print using cowsay
cowsay $(echo "$variable")
