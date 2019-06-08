#!/usr/bin/env bash
# File: guessinggame.sh

function countfile {
	ls -1 | wc -l
}


guess=0
fileno=0

while [[ $guess -ge 0 ]]

do
	echo " "
	echo " Please guess the number of files in the current directory:"
	echo " Please key in number followed by ENTER "

	read guess

	fileno=$(countfile)

	if [[  $guess -eq fileno ]] 
   		then 
       			echo " Congratulations!, Your guess is correct!"
			guess=-1
   		elif [[ $guess -lt fileno ]]
		then
       			echo " Your guess is LOW. Please guess again"
		else
			echo " Your guess is HIGH. Please guess again"
	fi		
done
