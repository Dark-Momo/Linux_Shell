#! /bin/bash
echo "Hello World"

# System variables
# echo, not ECHO
echo $BASH
echo $bash # This will output a empty line, not $BASH info.
echo $BASH_VERSION
echo $HOME
echo $PWD

# User defined variables
name=Mark
# Below 2 lines are the same.
echo The name is $name
echo "The name is $name"
# Don't use "name = Mark", otherwise name would be empty.


10val=10
echo Value is $10val
# Output is "Value is 0val" since variable name should not start with number.

val=10
echo Value is $val
# Output is "Value is 10"

VALUE=10
echo Value is $VALUE
# Output is "Value is 10"
