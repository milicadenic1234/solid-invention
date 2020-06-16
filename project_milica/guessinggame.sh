#!/usr/bin/env blash

function ask {
		echo 'Enter number of files'
		read guess
	files=$(find . -maxdepth 1 -not -type d|wc -l)
}

ask

while [[ $guess -ne $files ]]
	do
		if [[ $guess -lt $files ]];
			then
			echo 'The answer is too low. Please try again'
		else
			echo 'The answer is too high. Please try again'
		fi
	ask
	done

echo 'Congratulations! Correct answer'

