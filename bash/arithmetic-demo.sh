#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

#this script is asking user three numbers and showing the sum and product of that three numbers
read -p "numberone " numberone
read -p "numbertwo " numbertwo
read -p "numberthree " numberthree
sum=$((numberone + numbertwo + numberthree))
product=$((numberone * numbertwo * numberthree))

cat <<EOF
the sum of $numberone, $numbertwo, $numberthree is $sum
the product of $numberone, $numbertwo, $numberthree is $product
EOF
