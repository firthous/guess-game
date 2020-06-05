#!/bin/bash
echo "---GUESSING GAME---"
echo "Guess the number of files in directory"
echo "Enter your guess: "
read guess

function get_file {
	local number=$(ls -l | wc -l)-1
	echo $number
}

correct=$(get_file)

while [[ $guess -ne $correct ]]
do
	if [[ $guess -gt $correct ]]
	then
		echo "Your guess was too high"
	else 
		echo "Your guess was too low"
	fi
	echo
	echo "Guess again!!! "
	read guess
done

echo "Congratulations! You guessed the right number of files!"
echo "THANK YOU!!!!"
