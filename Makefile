README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "\n## Date and Time of Creation" >> README.md
	echo "$(shell date)" >> README.md
	echo "\n## Number of Lines in guessinggame.sh" >> README.md
	echo "$(shell wc -l < guessinggame.sh) lines" >> README.md
	echo "\n## Project Description" >> README.md
	echo "This project is a simple guessing game where the user guesses the number of files in the current directory. The game continues until the correct number is guessed." >> README.md

