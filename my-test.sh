# $ type [
# [ is a shell builtin
# $ which [
# /usr/bin/[
# [ (test) is a program in /bin/sh

#!/bin/sh

# because its a program, spaces are required
if [ $foo = 'bar' ] # '=' for strings, 'eq' for ints
then
    # if code
    echo if bar
else 
    # else code
    echo else 
fi # if backwards, close block

# -- also could be written as:
if [ $foo = 'bar' ]; then # with ';' separator, used to connect 2 lines (readbility)
    # if code
    echo then foo is bar
fi

# -- elif
if [ $foo = 'bar' ]; then
    echo foo is bar
elif [ $foo = 'foobar' ]; then
    echo foo is foobar
else
    echo foo is neither
fi

# other syntax (in line test):
[ "$X" -nt "/etc/passwd" ] && \
      echo "X is a file which is newer than /etc/passwd"
# '\' is used as a line break for readability
# && and || similar to javascript
# man test for more on nt, comparisons, etc
