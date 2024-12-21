#!/bin/sh

# this variables are predefined
# thing of argv and argc etc.
echo "I was called with $# parameter(s)" # $# stores num params (argc)
echo "My name is $0" # $0 stores file/program name (basename)
echo "My first parameter is $1" # $1-9 store args
echo "My second parameter is $2"
echo "All parameters are $@" # stores all args from $1-n

# $? contains exit value of last command
# could be good for error handling
# this executes my-command and checks its exit status:
/usr/local/bin/my-command
if [ "$?" -ne "0" ]; then
  echo "my-command exited with an error"
fi

# $$ -> PID of current shell
# $! -> PID of last run bg process
