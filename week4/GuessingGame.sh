#!/bin/bash

# This function prints a given error 
printError() { 
    echo -e "\033[31mERROR:\033[0m $1" 
} 

# This function will get a value between the 2nd and 3rd arguments 
getNumber() { 
   read -p "$1: " 
    while (( $REPLY < $2 || $REPLY > $3 )); do 
        printError "Input must be between $2 and $3" 
        read -p "$1: " 
    done 
} 

# Start of the script
echo "Welcome to the number guessing game!"

correct=42

while true; do
  getNumber "Enter a number between 1 and 100" 1 100
  guess=$REPLY

  if [ $guess -eq $correct ]; then
    echo "Correct!"
    break
  elif [ $guess -lt $correct ]; then
    echo "Too Low!"
  else
    echo "Too High!"
  fi
done

echo "Thank you for playing!"
