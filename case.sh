#!/bin/sh

# switch block syntax
# case tests the value of INPUT_STRING
echo "Please talk to me..."
while :
do 
    read INPUT_STRING
    case $INPUT_STRING in
        hello) 
            echo "Hello back!!"
            ;; # double semicolon indicting end of case
        bye)
            echo "Goodbye :("
            break # use 'exit' to break out of program. 'break' breaks out of loop
            ;;
        *)
            # * wildcard is the default case
            echo "Huh??"
            ;;
    esac # case backwards; end block
done # end while block
echo
echo "good chat!!"