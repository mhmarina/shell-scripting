#!/bin/sh

INPUT_STRING=hello
while [ "$INPUT_STRING" != "bye" ]
do
    echo "Type anything (bye to quit)"
    read INPUT_STRING
    echo "Input string: $INPUT_STRING"
done

# colon (:) always evaluates to true
# infinite loop:
while :
do
    echo "type ^C to exit"
done