#!/bin/bash

# chapter 2B
clear 

# Colors using ANSI
BLUE="\e[94m"
printf "${BLUE}"

figlet "BLUE"

echo "You sit up quickly." 
read ENTER
echo "A dragon lands and sits some distance away from you on the field. Its crystal blue scales as deep as the ocean."
read ENTER

# Cowsay dragon piped with echo
echo "GROOOHHHHARRRHHRRRRARARRRRRRRARRRRRRG!" | cowsay -f dragon
echo "it stares at you intently."
read ENTER

# a bunch of options for the user to input- chooses a path based on the option
B=0
while [ $B == 0 ]; do
	echo "What do you do?>"
	read INPUT
	if [[ $INPUT == "fight" || $INPUT == "fight dragon" || $INPUT == "fight the dragon" || $INPUT == "attack" || $INPUT == "attack dragon" || $INPUT == "attack the dragon" || $INPUT == "slay" || $INPUT == "slay dragon" || $INPUT == "slay the dragon" ]]; then
		B=2
		echo "You prepare to fight." 
	elif [[ $INPUT == "run" || $INPUT == "run away" || $INPUT == "run away from dragon" || $INPUT == "run away from the dragon" || $INPUT == "flee" || $INPUT == "walk away from dragon" || $INPUT == "walk away from the dragon" || $INPUT == "walk away" ]]; then
		B=1
		echo "You run away from the danger." 
		read ENTER
		echo "You continue running until you are sure you are safe."
	elif [[ $INPUT == "hug" || $INPUT == "love" || $INPUT == "pet" || $INPUT == "tame" || $INPUT == "hug dragon" || $INPUT == "love dragon" || $INPUT == "pet dragon" || $INPUT == "tame dragon" || $INPUT == "hug the dragon" || $INPUT == "love the dragon" || $INPUT == "pet the dragon" || $INPUT == "tame the dragon" ]]; then
		B=3
		echo "You reach your hand forward."
		read ENTER
		echo "You hear your heart pounding, like the beating of a taiko drum."
		read ENTER
		echo "The dragon bows and nudges your hand."
	else
		echo "I don't think that will work here."
	fi
done

# if statement depending on user choice
if [[ $B == 2 ]]; then
	echo "The dragon stares at you intently."
	read ENTER
	bash PINK.sh
	
elif [[ $B == 3 ]]; then
	echo "You and the dragon fly into the twilight sky, a symphony of brilliant blue and green."
	read ENTER
	echo "A bright yellow light surrounds you." 
	read ENTER
	bash YELLOW.sh
else
	echo "The world around you begins to fade."
	read ENTER
	bash BLACK.sh
fi
