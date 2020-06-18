#!/bin/bash
#
# this script rolls a pair of six-sided dice and displays both the rolls
#

# Task 1:
#  put the number of sides in a variable which is used as the range for the random number
#  put the bias, or minimum value for the generated number in another variable
#  roll the dice using the variables for the range and bias i.e. RANDOM % range + bias

# Task 2:
#  generate the sum of the dice
#  generate the average of the dice

#  display a summary of what was rolled, and what the results of your arithmetic were

# Tell the user we have started processing
echo "The process is started"
# roll the dice and save the results
# assigning the values to the range and additon variables
range=6
addition=1
# rolling die 1 and die 2 and addind the output of both dice and getting average of that
die1=$(( RANDOM % range + addition))
die2=$(( RANDOM % range + addition))
sum=$((die1 + die2))
average=$((sum / 2))
# display the results
#displaying the results of addition and average of dice which came from above
echo "Both the dice rolled $die1, $die2 and the sum of them is $sum"
echo "Both the dice rolled $die1, $die2 and the average of them is $average"
