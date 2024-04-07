#!/bin/bash

# clears the terminal to start WHITE chapter
clear

# changes color (if coming from another color)
WHITE="\e[37m"
printf "${WHITE}"
figlet "WHITE"

echo "The screen turns black."
read ENTER
echo "Welcome to my world."
read ENTER

B=0
while [ $B == 0 ]; do
	echo "Would you like to hear a story?>"
	read INPUT
	if [[ $INPUT == "yes" || $INPUT == "y" ]]; then
		B=2
		
	elif [[ $INPUT == "no" || $INPUT == "n" ]]; then
		B=1
		echo "Understandable. Have a nice day."
		# exits without error message
		exit 0
	else
		echo "Please only enter yes or no."
	fi
done

# calling the RED file from this script
bash RED.sh

