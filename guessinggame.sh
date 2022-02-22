#!/usr/bin/env bash
# File: guessinggame.sh
echo "How many files are there in the directory?"
filecount=$(git ls-files | wc -l)
function GitFilecount
{
echo "Enter you guess"
read guess
while [[ guess -ne $filecount ]]
do
    if [[ guess -lt $filecount ]] 
    then 
        echo "Guess is low"
    else
        echo "Guess is high"
    fi
   echo "Enter your guess again"
   read guess
done
echo "Congratulations! You guessed it right."
}
GitFilecount
   