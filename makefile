README.md: guessinggame.sh
  echo "# The title of this project is Guessing Game." > README.md
  echo "Make was run on ** $(date +"%Y-%m-%d") ** at ** $(date +"%H:%M:%S") **." >> README.md
  echo -n "The number of lines of code contained in guestinggame.sh is " >> README.md
  wc -l guestinggame.sh | egrep -o "[0-9]+" >> README.md