all:  title time code

title: 
	echo "Title of Project for Week 4 :" > readme.md
	echo "Guessing Game Bash Script" >> readme.md

time:  
	echo "File created on : "  >> readme.md
	echo $$(date +%F-%R) >> readme.md

code: guessinggame.sh
	echo "Number of lines of code  :  " >> readme.md
	echo  $$(grep -c  [^\s*$$] guessinggame.sh )  >> readme.md

clean: 
	rm readme.md 

