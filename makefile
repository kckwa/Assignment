README.md: guessinggame.sh
	echo "# THE GUESSING GAME" > README.md
	date >> README.md
	echo "\```" >> README.md
	echo "There are $(wc -l guessinggame.sh | egrep -o '[0-9]+') lines" >> README.md
	echo "\```" >> README.md
