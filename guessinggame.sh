#!/usr/bin/env bash
# File: guessinggame.sh

echo "WELCOME TO THE GUESSING GAME"
echo "Guess how many files are in the current directory:"
read response

dir_size=$(ls -1 | wc -l) 
valid_integer='^[0-9]+([.][0-9]+)?$'

function compare_response {
if [[ $response -gt $dir_size && $response =~ $valid_integer ]]
then
  echo "Your guessed too high"
elif [[ $response -lt $dir_size && $response =~ $valid_integer ]]
then
  echo "Your guessed too low"
else
  echo "INVALID GUESS: Only integers are allowed"
fi
}

while [[ $response -ne $dir_size || ! $response =~ $valid_integer ]]
do
  compare_response
  echo "Please enter another guess:"
  read response
done

echo "Congratulation! You Guessed right"

exit
