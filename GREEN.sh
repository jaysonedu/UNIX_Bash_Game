#!/bin/bash

# Chapter 2A
 
clear

# Colors with ANSI
GREEN="\e[92m"
printf "${GREEN}"

figlet "GREEN" 

# echo piped to toilet, which adds a rainbow border and text theme
echo "$(echo "Once upon a time..." | toilet -f term -F  border --gay)"

GREEN="\e[32m"
printf "${GREEN}"

echo "You are in the story. Every essence of the story and your life are intertwined."
read ENTER
echo "it is as if the story was written about you from the beginning."
read ENTER
echo "You are no longer in your cozy home, reading that story with no title. You find yourself in a open field, surrounded by fields of green." 
read ENTER
echo "Without a worry in life, like the gentle blades of grass ruffling in the wind."
read ENTER

# conditional while loop to make sure user explores four cardinal directions (the count accounts for amount explored)
B=0
COUNT=0

# conditional that requires B to be same and count to be less than or equal to 3
while [[ $B == 0 && $COUNT -le 3 ]]; do
	echo "The scenery stretches for eternity, begging to be explored. You still have some time before nightfall."
	echo "What would you like to do?>"
	read INPUT
	
	# wants user to directly input a direction
	if [[ $INPUT == "walk" || $INPUT == "explore" ]]; then
		echo "Please specify a cardinal direction to explore."
		
	elif [[ $INPUT == "east" || $INPUT == "walk east" ]]; then
		echo "You walk east." 
		read ENTER
		echo "You come across a pasture of cows. However, these don't seem like normal cows..."
		read ENTER
		
		# The cows say random things while being rainbow
		fortune | cowsay | lolcat
		fortune | cowsay | lolcat
		echo "You walk back to the origin to not get lost." 
		read ENTER
		
		# same as Count += 1
		COUNT=$(( $COUNT + 1 ))
		
	elif [[ $INPUT == "south" || $INPUT == "walk south" ]]; then
		echo "You walk south."
		read ENTER
		echo "You come across a field of ten million fireflies, lighting up the world with brilliant light."
		read ENTER
		
		# opens a youtube link for Fireflies by Owl City
		xdg-open https://www.youtube.com/watch?v=psuRGfAaju4
		echo "You walk back to the origin to not get lost."
		read ENTER
		COUNT=$(( $COUNT + 1 ))
		
	elif [[ $INPUT == "west" || $INPUT == "walk west" ]]; then
		echo "You walk west."
		read ENTER
		echo "You continue walking for what seems like forever. The sea of green seeming to stretch forever."
		read ENTER
		echo "You seem to notice a steam engine chugging across the landscape." 
		# steam engine!
		sl
		echo "Your imagination has become reality." 
		read ENTER
		echo "You walk back to the origin to not get lost."
		read ENTER
		COUNT=$(( $COUNT + 1 ))
		
	elif [[ $INPUT == "north" || $INPUT == "walk north" ]]; then
		echo "You walk north."
		read ENTER
		echo "You come across what appears to be a metallic ruin."
		read ENTER
		echo "You walk closer and notice a peculiar symbol..."
		read ENTER
		echo "The symbol is the remnants of the NASA logo. Upon careful inspection you realize that this is a crash site."
		read ENTER
		echo "You can barely make out the characters V_Y__ER 2"
		# Some lore relating to VOYAGER 2, which is currently deep in outer space still exploring. Is this the future?
		read ENTER
		echo "You walk back to the origin to not get lost."
		read ENTER
		COUNT=$(( $COUNT + 1 ))
	
	# secret option
	elif [[ $INPUT == "up" || $INPUT == "fly" || $INPUT == "fly up" ]]; then
		B=1
		echo "You look up and fly. In a world where reality doesn't follow rules, the sky feels so liberating."
		read ENTER
		echo "You look down, the world looks so small beneath. A brilliant yellow light surrounds you."
		read ENTER
		bash YELLOW.sh
	elif [[ $INPUT == "sleep" ]]; then
		COUNT=4
		B=1
	else
		echo "I don't think that will work here." 
	fi
done

if [[ $COUNT == 4 ]]; then
	echo "Your legs are tired from a full day of exploring." 
	read ENTER
	echo "You feel your eyelids drooping. Before you know it, you are fast asleep."
	read ENTER
	echo "suddenly..."
	echo "you hear a loud ROAR"
	read ENTER
	bash BLUE.sh
else
	# exits without error if exception in code (user should not be able to reach this point)
	exit 0
fi

