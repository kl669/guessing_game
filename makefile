README.md: guessinggame.sh
	touch README.md
	echo "#Guessing Game" > README.md
	echo "" >> README.md
	echo "Make ran at: `date`" >> README.md
	echo "Number of lines in guessinggame.sh: `wc -l guessinggame.sh | egrep -o \"[0-9]+\"`" >> README.md
all: README.md
clean:
	rm -rf README.md
