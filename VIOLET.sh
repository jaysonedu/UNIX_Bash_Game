#!/bin/bash

clear

# Light Purple colors

VIOLET="\e[95m"
printf "${VIOLET}"

figlet "VIOLET"

# fire!
aafire

read ENTER
echo "You shrug it off. Books are made to burn anyway."
read ENTER
echo "You decide to explore more of your surroundings. Maybe it's a good idea to-"
read ENTER

# cool effects with figlet
figlet "__________"
echo "The world shatters. A broken piece of pottery."
read ENTER
echo "The petals of the reality wilt away in a violent violet storm."
read ENTER
echo "Paint it black." 
read ENTER
echo "..."
read ENTER

# while loop to check if inputs are correct
A=0
while [ $A == 0 ]; do
	echo "Paint it black. You hear it echoing in your head."
	
	# y = PINK.sh 	n = BLACK.sh
	echo "Would you like some color?>"
	read INPUT
	if [[ $INPUT == "yes" || $INPUT == "y" ]]; then
		A=2
		
	elif [[ $INPUT == "no" || $INPUT == "n" ]]; then
		A=1
	else
		echo "Please only enter yes or no."
	fi
done

if [ $A == 2 ]; then
	echo "The world glitches and blips to a static white. Blue. Red. Green. Finally settling in on a light pink."
	read ENTER
	echo "You sense an ominous presence. You're not sure what it is, but the obstacles looms over you."
	read ENTER
	bash PINK.sh
else
	echo "Paint it black."
	bash BLACK.sh
fi
