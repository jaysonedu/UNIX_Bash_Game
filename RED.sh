#!/bin/bash 

# first chapter of story
clear 

# Color scheme using ANSI colors
RED="\e[91m"
printf "${RED}"

figlet "RED"

echo "The room glows with a warm red. The warmth of the fireplace. The warmth of your heart."
read ENTER
echo "You're not sure how you got here, especially sitting cozily on a big red counch."
read ENTER
echo "However, you notice a large novel resting in your lap. It feels so foreign, like that of a hermit crab in a new shell."
read ENTER
echo "You notice the title has been faded, but you can tell that the book has some significance." 
read ENTER
echo "Where are you? When are you? Who would read a book when everything is digitalized now?"
read ENTER


# while loop to check for user input
C=0
while [ $C == 0 ]; do
	echo "The book rests in your lap. The fire burns bright."
	echo "What do you want to do?>"
	read INPUT
	if [[ $INPUT == "read" ]]; then
		C=2
		
	elif [[ $INPUT == "burn" || $INPUT == "throw" || $INPUT == "destroy" ]]; then
		C=1
	else
		echo "Hmm... I don't think that works here."
	fi
done

if [[ $C == 2 ]]; then
	echo "You flip to the first page and begin reading."
	read ENTER
	bash GREEN.sh
else
	
	echo "The book burns before your eyes, each page erupting into violent shades of violet flames."
	read ENTER
	bash VIOLET.sh
fi
