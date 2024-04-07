#!/bin/bash

# Welcome to MEANING start script!"
clear

WHITE="\e[37m"
printf "${WHITE}"

figlet "MEANING"
echo "inspired by Photopia"

# Implement color schemes for figlet chapter titles

# while loop to check if inputs are correct and provides instructions
A=0
while [ $A == 0 ]; do
	echo "Would you like to hear the instructions?>"
	read INPUT
	if [[ $INPUT == "yes" || $INPUT == "y" ]]; then
		A=2
		
	elif [[ $INPUT == "no" || $INPUT == "n" ]]; then
		A=1
	else
		echo "Please only enter yes or no."
	fi
done

# Beginning of story if user inputs yes
if [ $A == 2 ]; then
	echo "Welcome to MEANING. This interactive piece will require user input, which is indicated whenever the > symbol is presented."
	echo "When prompted, please keep phrases simple (ideally one word answers). The game can be completed with solely one word commands. The piece is interactive, but has limited vocabulary and will only accept certain commands to progress. Examples include: talk, north, south, east, west, hug, walk..."
	echo "Please make sure the command given is in lowercase."
else
	echo "Well it seems like you got the hang of this. I won't do any more of this mindless chatter."
fi
echo "Whenever there is a line of dialogue that is not a prompt, press enter to continue."
# The story will not progress unless a key is pressed.
read ENTER
echo "Try to explore all of the stories: WHITE, RED, GREEN, BLUE, YELLOW, VIOLET, PINK, and BLACK."
read ENTER

bash WHITE.sh
