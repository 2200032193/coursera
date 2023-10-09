#!/bin/bash

function guessing_game {
    local correct_files=$(ls -1A | wc -l)

    while true; do
        echo "How many files are in the current directory?"
        read guess

        if [[ $guess -lt $correct_files ]]; then
            echo "Too low. Try again."
        elif [[ $guess -gt $correct_files ]]; then
            echo "Too high. Try again."
        else
            echo "Congratulations! You guessed correctly."
            break
        fi
    done
}

guessing_game
