#!/bin/bash

repeat=1

function checkguess {

  if [[ $1 -eq $fil_count ]]
  then
    echo "Congratulations! You have got the correct number."
    repeat=0
  elif [[ $1 -gt $fil_count ]]
  then 
    echo "The number you entered is too high. Please try again."
    echo ""
  else
    echo "The number you entered is too low. Please try again."
    echo ""
  fi
}


fil_count=$(ls -l | wc -l)
while [[ $repeat -eq 1 ]]
do
  echo "Please guess the number of files in the current directory:"
  read user_guess_no
  checkguess $user_guess_no
done
