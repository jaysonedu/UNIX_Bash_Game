#!/bin/bash

clear 

# Custom colors using ANSI
PINK="\e[38;5;212m"
printf "${PINK}"

figlet "PINK"

# This is a cool chapter that should feel different if you're coming from VIOLET (obstacle to dragon) or BLUE (dragon to obstacle)

echo "You prepare to fight the obstacle in front of you. A materialization of all the obstacles in your life. The dragon."
read ENTER

# pink dragon with fortune
fortune | cowsay -f dragon
read ENTER

# opens Inventory with ls and cd
echo "You check your inventory."
cd Inventory
ls 
read ENTER

B=0
while [ $B == 0 ]; do
	echo "Which item would you like to use?>"
	read INPUT
	
	# restart option
	if [[ $INPUT == "poem" || $INPUT == "POEM" ]]; then
		echo "You prepare to read your poem."
		read ENTER
		
		# imagemagick display option
		display poem
		echo "You tearfully read your poem confessing your love to the dragon."
		read ENTER
		echo "The dragon looks at you with blank eyes."
		read ENTER
		echo "Erm, Sorry bro... I'm taken already."
		read ENTER
		echo "You stare at the dragon and it stares back at you."
		read ENTER
		echo "Well umm... this is awkward. I guess I'll just eat you. Hope you had a nice life?"
		read ENTER
		echo "Please do."
		read ENTER
		echo "You were eaten by the dragon. Looks like the poem didn't work."
		
	# restart option
	elif [[ $INPUT == "sandwich" || $INPUT == "SANDWICH" ]]; then
		echo "You eat the sandwich." 
		read ENTER
		display sandwich
		echo "You eat the sandwich, alleviating your hunger."
		read ENTER
		echo "The world starts to flutter."
		read ENTER
		echo "Suddenly, your story is superimposed with that of the hungry dragon."
		read ENTER
		echo "You are both the dragon, yourself, and the sandwich."
		read ENTER
		echo "You eat the sandwich. The dragon eats you. Perspective is relative."
		read ENTER
		echo "You were eaten by the dragon. Looks like the sandwich didn't work."
	
	# actual combat / victory ending
	elif [[ $INPUT == "sword" || $INPUT == "SWORD" ]]; then
		B=1
		echo "You reach for your sword."
		read ENTER
		display sword
		echo "You materialize your sword from sheer willpower and determination."
		read ENTER
		echo "You wave the beacon of light. The dragon roars."
		read ENTER
		echo "The fight is arduous, but you are determined to overcome."
		read ENTER
		echo "You stab at the dragon. Reality shifts. You notice the sword become a long candy cane."
		read ENTER
		echo "You imagine the whole of your life... all of the pain, joys, brilliances... in the one candy cane."
		read ENTER
		echo "After a long and hard fight, you defeat the dragon. You have never felt so proud and accomplished."
		read ENTER
		echo "You lie down on the grass, exhausted. Still, you are determined for the next adventure."
		read ENTER
		echo "Until next time, traveler of existence."
		read ENTER
		figlet "THE END." | lolcat 
		
	# BLACK.sh ending
	elif [[ $INPUT == "pencil" || $INPUT == "PENCIL" ]]; then
		B=1
		echo "You take out your magic pencil."
		read ENTER
		display pencil
		echo "Everything could be your reality. You feel the infinite possibilities coursing through the pencil."
		read ENTER
		echo "You erase the obstacle standing in front of you away. It feels nice to erase the fabric of reality."
		read ENTER
		echo "Why stop here? You begin erasing mountains, the sky, mathematics, dimension, everything."
		read ENTER
		echo "The world melts away."
		read ENTER
		# changes directory back to root to display different color files again
		cd ..
		bash BLACK.sh
		
	else
		echo "I don't think that will work here."
	fi
done
