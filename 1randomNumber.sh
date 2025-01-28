#!/bin/bash

# Set the range for random numbers
# Make it pretty in the process 
clear
echo
echo "$(printf '#%.0s' {1..50})"
echo "## $(printf ' %.0s' {1..44}) ##"
echo "This is a random number generator from 1 - 100"
MIN=1
MAX=100

# Generate a random number within the specified range
RANDOM_NUMBER=$((RANDOM % (MAX - MIN + 1) + MIN))
sleep 0.75

echo "Random Number: $RANDOM_NUMBER"
echo "## $(printf ' %.0s' {1..44}) ##"
echo "$(printf '#%.0s' {1..50})"
