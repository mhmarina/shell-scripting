# https://www.shellscript.sh

# ./my-script.sh to execute
# '|' piping
# $ cat /tmp/myfile | grep "mystring" 
# pipe cat output as input to grep
# eqv to $ grep "mystring" /tmp/myfile <-- which runs much faster

# $ echo '#!/bin/sh' > my-script.sh 
# '>' echos/write to file; '>>' appends
# $ echo 'hello world!' >> my-script.sh
# $ command < file  <-- "<" is inputting file to command
# first line tells unix to execute file by bin/sh
# location of Bourne shell on typical unix system

# comments starting with "#" are ignored
# except when followed by "!", meaning a directive

# --- Start of script:

#!/bin/sh
echo Hello World # echo with 2 args: "Hello" and "World". utomatically adds space btwn args
echo "Hello     World" # with 2 tabs in btwn. Called with one arg
                       # shell parses arg before passing to program (echo)
echo Hello * World # Hello my-script.sh World
echo Hello "   " World
echo "Hello "*" World"
echo `hello` world # ./my-script.sh: line 28: hello: command not found \n world
echo 'hello' world
# echo is a program/md that takes any num args

# variables
MY_MESSAGE="my msg" # no spaces btwn var and assignment
echo $MY_MESSAGE
# shell doesnt care about var types
MY_MESSAGE=my_msg
echo $MY_MESSAGE
MY_MESSAGE=20
echo $MY_MESSAGE

expr $MY_MESSAGE + 20
MY_MESSAGE=string
expr $MY_MESSAGE + 20 # throws error, expr expects numerical args

# scanner (user input using read cmd)
echo What is your name?
read MY_NAME # automatically places double quotea around input
echo "Hello $MY_NAME!!!!"

echo "enter your first and last name"
read ARG1 ARG2
echo "arg 1:" $ARG1 
echo "arg 2:" $ARG2
echo $ARG3 # outputs empty string
# $ARG3 is undeclared -- variables do not have to be declared
# trying to read empty var outputs empty string

echo "goodbye."
