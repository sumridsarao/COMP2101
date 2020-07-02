#!/bin/bash
# This script demonstrates how the shift command works

# create an empty array to put the command line arguments into
myargs=()
#defining the variables
verbose=0
debug=0
echo "Contents of Myarg array: $@"
# loop through the command line arguments
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
#this code is performing task 1, using case statement to recognize options
echo "Processing the value '$1'."

  case $1 in
  -h )
#  when help option is recognized, printing out the help for the comand and exit
    echo 'entered -h for help'
#displaying further details when help command is entered, and giving further options
    echo "if we need help with Varbose choose -v, if we need help with Debug choose -d and debug level within 1 to 5."
	exit
    ;;
  -v )
#if verbose option is entered, showing verbose options
    echo 'entered "-v" command for verbose.'
    verbose=1
    ;;
  -d )
	#if debug option is enetred, showing debug options and setting the variable with the debug level from the number give after entering -d command
  echo 'added "-d" key for debug.'
  case $2 in
  [1-5] )
		echo "we added the -d for debug level $2."
		debug=$2
		shift
		;;
  *)
	#giving user error message, if they give any another number
	  echo "Error, Can't process: The debug mode should be between [1-5]. "
		esac
		;;
  *)
  errors=$1
  echo "Error: value is unknown: $errors"
  ;;
  esac

  # each time through the loop, shift the arguments left
  # this decrements the argument count for us
  shift
  # tell the user we shifted things
  echo "Shifted command line, leaving $# things left to process."
  echo "--------------------------"
done
echo "Done"

# TASK2: display the settings and myargs contents
#         Tell the user if vebose mode is on
#         Tell the user if debug mode is on and if it is, what number it is set to
#         Print out the myargs array with a label
#telling the user if verbose mode is on or off using if condition
if [ $verbose = 1 ]; then
  echo "The Varbose mode is On."
else
  echo "The Varbose mode is Off."
fi
#telling user if debug mode is on or off and if it is on with which number it is set to
if [ $debug -gt 0 ]; then
  echo "The Debug Mode is On with debug level $debug."
else
  echo "The Debug Mode is Off."
fi
