#!/bin/bash

# Set the range for random numbers
clear 
echo
echo "$(printf '#%.0s' {1..60})"
echo "## $(printf ' %.0s' {1..54}) ##"

MIN=1
MAX=100000

# Prompt the user for how many random numbers to generate
echo "This a random number generator in the range of 1 - 100,000"
read -p "How many random numbers would you like to generate? " COUNT

# Validate user input
if ! [[ "$COUNT" =~ ^[0-9]+$ ]] || [ "$COUNT" -le 0 ]; then
  echo "Please enter a valid positive integer."
  exit 1
fi

echo "Generating $COUNT random numbers between $MIN and $MAX:"
for ((i = 1; i <= COUNT; i++)); do
  RANDOM_NUMBER=$((RANDOM % (MAX - MIN + 1) + MIN))
  echo "$i: $RANDOM_NUMBER"
done

echo "## $(printf ' %.0s' {1..54}) ##"
echo "$(printf '#%.0s' {1..60})"

