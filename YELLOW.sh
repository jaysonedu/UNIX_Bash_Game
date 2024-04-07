#!/bin/bash

clear

# Light Yellow colors

YELLOW="\e[33m"
printf "${YELLOW}"

figlet "YELLOW"

# secret ending??

echo "You open your eyes. You don't know how, but every essence of you knows that this is the eternal."
read ENTER
echo "The Eternal light, the eternal truth... or maybe just melting in the sun."
read ENTER
echo "Everything in your life has gone right, and you have finally reached the endof your contempt journey."
read ENTER
echo "There is nothing further for you to do... yet something still lingers."
read ENTER
echo "Like every philosophical thought, you are confronted with a decision."
read ENTER
echo "Is your reality set in stone? What is MEANING?"
read ENTER

B=0
while [ $B == 0 ]; do
	
	# pure relating to either white or black
	echo "Reality is pure. What color is it?>"
	read INPUT
	if [[ $INPUT == "WHITE" || $INPUT == "white" ]]; then
		B=1
		echo "It seems you have not found your reality yet."
		read ENTER
		echo "Hope your journey is a long one, filled with stories to be told."
		read ENTER
		bash WHITE.sh
	elif [[ $INPUT == "BLACK" || $INPUT == "black" ]]; then
		B=1
		echo "Is your reality set in stone?"
		read ENTER
		echo "A story must lie there in the end, interlaced in reality."
		read ENTER
		bash BLACK.sh
		
	 # if user inputs any other color:
	elif [[ $INPUT == "red" || $INPUT == "blue" || $INPUT == "green" || $INPUT == "yellow" || $INPUT == "pink" || $INPUT == "orange" || $INPUT == "violet" || $INPUT == "purple" ]]; then
		B=2
	else
		echo "Please enter a basic color in all lowercase."
	fi
done

if [[ $B == 2 ]]; then
	echo "It seems you have found your place."
	read ENTER
	echo "Welcome to the eternal reality, a mixture of all colors not black and white."
	read ENTER
	echo "Thank you for sharing this MEANING."
	read ENTER
	figlet "THE END." | lolcat
else
	# exception 
	exit 0
fi
