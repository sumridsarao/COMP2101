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
#asking user their name and generating hostname

hostname=$(hostname)
#setting date in HH:MM:SS format and time variable is describing day
date=$(date "+%I:%M:%S %p")
time=$(date +%A)
#mentioning conditions of weekdays and giving title according to it
if [ $time == "Monday" ]
then
  title="Energetic"
elif [ $time == "Tuesday" ]
then
  title="Excited"
elif [ $time == "Wednesday" ]
then
  title="Joyful"
elif [ $time == "Thursday" ]
then
  title=""
elif [ $time == "Friday" ]
then
  title="Grateful"
elif [ $time == "Saturday" ]
then
  title="Loved"
elif [ $time == "Sunday" ]
then
  title="Cheerful"
fi

###############
# Main        #
###############
#Displaying the hostname, title, user name, time and day after getting results from above.

cowsay "Welcome to planet $hostname, $title $USER!
It is $time at $date"
