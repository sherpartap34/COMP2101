#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)

guessNumber=1
# Task 1 : Asking User for a password guess
read -p "Enter Password Guess Test String $guessNumber" myString
referenceString="password"

# Task 2 : Rewriting if command
if [ $myString == $referenceString ]; then
echo "Password Guessed! Attempt Number $guessNumber"
else 
guessNumber=$(( guessNumber+1))
echo "Password Not Guessed!"
fi
# Task 3: 5 tries
if [ $guessNumber -eq 2 ]; then
read -p "Enter Password guess Test String $guessNumber" myString
if [ $myString == $referenceString ]; then
echo "Password Guessed! Attempt Number $guessNumber"
else
guessNumber=$(( guessNumber+1))
echo "Password Not Guessed!"
fi
if [ $guessNumber -eq 3 ]; then
read -p "Enter Password guess Test String $guessNumber" myString
if [ $myString == $referenceString ]; then
echo "Password Guessed! Attempt Number $guessNumber"
else
guessNumber=$(( guessNumber+1))
echo "Password Not Guessed!"
fi
if [ $guessNumber -eq 4 ]; then
read -p "Enter Password guess Test String $guessNumber" myString
if [ $myString == $referenceString ]; then
echo "Password Guessed! Attempt Number $guessNumber"
else
guessNumber=$(( guessNumber+1))
echo "Password Not Guessed!"
fi
if [ $guessNumber -eq 5 ]; then
read -p "Enter Password guess Test String $guessNumber" myString
if [ $myString == $referenceString ]; then
echo "Password Guessed! Attempt Number $guessNumber"
else
echo "Password Not Guessed! No More Attempts"
fi
fi
fi
fi
fi
