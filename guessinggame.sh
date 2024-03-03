#!/usr/bin/env bash
filenum=$(ls | wc -l)

function guessF {
	read guess
	if [[ $guess -eq $filenum ]]
	then
		echo "Amazing!!! You finally guessed it!"
		for f in $(ls)
		do
			echo "  - $f and "
		done
		echo "    ... and that was it."
	else
		if [[ $guess -gt $filenum ]]
		then
			echo "There is less... try again :"
			guessF
		else
			echo "There is more... try again :"
			guessF
		fi
	fi
}
echo "Welcome to the guessing game!"
guessF