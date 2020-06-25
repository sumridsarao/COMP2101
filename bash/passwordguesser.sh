#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)
#Setting up my string and reference string
myString="Sumrid"
referenceString="Sumrid"
#asking user to guess the password
read -s -p "Can you guess the password?:" myString
echo
#checking if user guessed th password right.
if [ $myString = $referenceString ]; then
#If user guessed rights, displaying you gueesed right
echo "Yes, you guessed it right"
echo
else
#If user does not guessed right, then asking them again giving user total five tries.
echo "Give an another try"
read -s -p "Can you guess the password?:" myString
if [ $myString = $referenceString ]; then
echo "Yes, you guessed it right"
echo
else
echo "Give an another try"
read -s -p "Can you guess the password?:" myString
if [ $myString = $referenceString ]; then
echo "Yes, you guessed it right"
echo
else
echo "Give an another try"
read -s -p "Can you guess the password?:" myString
if [ $myString = $referenceString ]; then
echo "Yes, you guessed it right"
echo
else
echo
echo "Give an another try"
read -s -p "Can you guess the password?:" myString
if [ $myString = $referenceString ]; then
echo "Yes, you guessed it right"
echo
else
# after five tries displaying message to the user that he/she has no more attempts to guess the password
echo "Sorry, No more attempts"
fi
fi
fi
fi
fi
