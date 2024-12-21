#!/bin/sh

echo "MYVAR is: $MYVAR" # undeclared, empty var
MYVAR="Hello World!"
echo "MYVAR is: $MYVAR"

# export keyword allows variable to be inherited by other programs
# $ MYVAR=hello
# $ export MYVAR
# $ ./myvar.sh
# MYVAR is: hello
# MYVAR is: Hello World!
# $ echo $MYVAR
# hello

# the old value has been passed from the script to the shell, but
# the new value for MYVAR hasn't been passed back to the shell
# script is run in a separate shell, and is destroyed once script exits
# to store env changes from script, we must source it
# aka, running the script inside our shell, instead of creating a new one to run it

# source via the dot command when executing:
# $ . ./myvar.sh
# $ echo $MYVAR
# Hello World!

echo "What is your name?"
read MY_NAME
echo "creating file named "${MY_NAME}_file""
touch "${MY_NAME}_file"