#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

#Taking input from user for 3 numbers
read -p "Enter First Number:" firstnum
read -p "Enter Second Number:" secondnum
read -p "Enter Third Number:" thirdnum
#Finding sum of the three numbers entered
sum=$((firstnum + secondnum + thirdnum))
dividend=$((firstnum / secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")
# Finding product of three numbers entered
product=$(( firstnum * secondnum * thirdnum ))

#Printing Sum and Product with Labels
cat <<EOF
Sum
---
$firstnum + $secondnum + $thirdnum = $sum

Product
-------
$firstnum * $secondnum * $thirdnum = $product
EOF
