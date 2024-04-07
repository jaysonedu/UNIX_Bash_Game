#!/bin/bash

clear

BLACK="\e[37m"
printf "${BLACK}"
figlet "BLACK"

echo "Welcome to the void, the collection of all letters, nouns, verbs, sentences, stories, untold."
read ENTER
echo "Whatever the infinite possibilities, there will always be MEANING."
read ENTER

# final check / options for user to end the story.
B=0
while [ $B == 0 ]; do
	echo "All stories must have an end.>"
	read INPUT
	if [[ $INPUT == "read" || $INPUT == "open" || $INPUT == "story" || $INPUT == "book" || $INPUT == "start" ]]; then
		B=1
		echo "It seems that you are not yet done."
		read ENTER
		echo "MEANING is indeed an endless quest for knowledge." 
		read ENTER		
		echo "Come see me later, when time has passed and we are full of stories to be told."
		read ENTER
		
	elif [[ $INPUT == "close" || $INPUT == "finish" || $INPUT == "end" || $INPUT == "close" || $INPUT == "terminate" ]]; then
		B=2
		echo "There's always an end, an infinite void for reality to reach."
		read ENTER
		echo "All the stories of the past, present, and future are bound by time, and are always the same."
		read ENTER
		echo "The stories will endure, as they are the universe. You and I are only wanderers in a plain of existence."
		read ENTER
		
	elif [[ $INPUT == "MEANING" || $INPUT == "meaning" ]]; then
		B=3
		echo "All stories must lead here to the final MEANING."
		read ENTER
		echo "There is nothing more for me to say. All words, in this final space, have the same MEANING."
		read ENTER
		echo "The colors of your journey flash before your eyes. All synonyms for the same essense."
		read ENTER
		echo "They surround you, filling you with a vibrant energy ready to break free of all MEANING."
		read ENTER
		
		# figlet piped to lolcat makes a rainbow color for the ending.
		figlet "MEANING" | lolcat 
		exit 0
		
		# checks if the user input is blank.
	elif [[ $INPUT == "" ]]; then
		echo "This prompt requires a user input."
		
	else
		echo "I don't think that will work here. Remember that all inputs should be single words."
	fi
done

figlet "THE END." | lolcat
