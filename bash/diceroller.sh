#!/bin/bash
#
# this script rolls a six-sided die
#

# Task: Improve this script by making it roll as many dice as there are letters in your first name, instead of just one

# roll the dice and display the result
echo "
Rolling the dice....."
#specifying range and addition variable values
range=6
addition=1
#rolling as many dice as much as the number of letters in my first name.
diceone=$(( RANDOM % range + addition))
dicetwo=$(( RANDOM % range + addition))
dicethree=$(( RANDOM % range + addition))
dicefour=$(( RANDOM % range + addition))
dicefive=$(( RANDOM % range + addition))
dicesix=$(( RANDOM % range + addition))
#displayig result got after rolling dice
echo "The outcomes after rolling dice are $diceone, $dicetwo, $dicethree, $dicefour, $dicefive, $dicesix"
