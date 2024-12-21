#!/bin/sh

# for loop
for i in 1 2 3 4 5 
do
    echo "Looping: $i"
done

# i values dont have to be numbers:
for i in hello 1 2 hi * "*" \*
do
    echo "Looping: $i"
done
# "for" cmd loops through all inputs until it runs out
