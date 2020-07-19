all: README.md

README.md: guessinggame.sh
	echo "The Unix Workbench Course Assignment"  > README.md
	echo "By Johns Hopkins University" >> README.md
	echo "**Make date**: " >> README.md
	date >> README.md
	echo "**Number of lines in guessinggame.sh:** " >> README.md
	grep -c '' guessinggame.sh >> README.md
clean:
	rm README.md





