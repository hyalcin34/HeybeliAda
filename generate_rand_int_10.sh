#!/bin/bash

# This script writes the numbers from 1 - 10 in random order. Each number appears only once.

sleep 1

echo "This script writes the numbers from 1 - 10 in random order. Each number appears only once."

sleep 1

awk -v loop=10 -v range=10 'BEGIN{
  srand()
  do {
    numb = 1 + int(rand() * range)
    if (!(numb in prev)) {
       print numb
       prev[numb] = 1
       count++
    }
  } while (count<loop)
}'
