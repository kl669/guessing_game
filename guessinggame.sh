#!/bin/bash

function check_guess() {
  if [[ $1 -eq $2 ]]
  then
    echo -e "Congratulations! Your guess \"$1\" is correct.\n"
    return 0
  elif [[ $1 -gt $2 ]]
  then
    echo -e "Your guess \"$1\" is too high. Please try again.\n"
    return 1
  else
    echo -e "Your guess \"$1\" is too low. Please try again.\n"
    return 1
  fi
}

num_files=`ls -l | wc -l`
echo -e "Welcome to the guessing game!\n"
while true
do  
  echo "Please enter a guess for the number of files in your current directory \"`pwd`\":"
  read guess
  check_guess $guess $num_files
  flag=$?
  if [[ $flag -eq 0 ]]
  then
    exit 0
  fi 
done
