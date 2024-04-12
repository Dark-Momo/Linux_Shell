#! /bin/bash

echo "Argument number is $#"
# --------------------------------------------------------------------------
# momo@Ubuntu-Linux-22-04:~/Linux_Shell$ ./3-PassArgument.sh Momo Kuku 100
# Argument number is 3
# --------------------------------------------------------------------------

# For a Shell, its arguments are stored in variable $0 $1 $2 $3 and so on...
echo "Method - 1"
echo $0 $1 $2 $3 
echo '> $0 $1 $2 $3'
echo '> ${0} ${1} ${2} ${3}'
echo "> $0 $1 $2 $3"
echo "> ${0} ${1} ${2} ${3}"
# --------------------------------------------------------------------------
# Execution is:
# momo@Ubuntu-Linux-22-04:~/Linux_Shell$ ./3-PassArgument.sh Momo Kuku 100
# ./3-PassArgument.sh Momo Kuku 100
# > $0 $1 $2 $3
# > ${0} ${1} ${2} ${3}
# > ./3-PassArgument.sh Momo Kuku 100
# > ./3-PassArgument.sh Momo Kuku 100
# momo@Ubuntu-Linux-22-04:~/Linux_Shell$ 
# --------------------------------------------------------------------------

echo "Method - 2"
echo '$@ is' $@ # Output is '$@ is Momo Kuku 100'.
# $@ stores the arguments passed in array format.
# It doesn't contain the first argument, which is the file name.

echo 'args=$@'
args=$@
echo "${args[0]} ${args[1]} ${args[2]} ${args[3]}"

echo 'args=${@}'
args=${@}
echo "${args[0]} ${args[1]} ${args[2]} ${args[3]}"

echo 'args={$@}'
args={$@}
echo "${args[0]} ${args[1]} ${args[2]} ${args[3]}"


