#! /bin/bash

a=2334                   # Integer

a += 1
echo "a = $a "           # a = 2334

let "a += 1"
echo "a = $a "           # a = 2335

echo "Number Comparison Below..."

arg=10
echo 'arg is 10'

echo '${arg} > 9 ?'

if [ ${arg} > 9 ]
then echo "True"
fi

if (( ${arg} > 9 ))
then echo "True"
fi

echo '${arg} -gt 9 ?'
if [ ${arg} -gt 9 ]
then echo "True"
fi
 
echo "String Comparison Below..."
word=abcdef
if [ $word = "abcdef" ]
then echo "String Comp : True"
fi

if [[ $word < "accdef" ]]
then echo "String Comp : True"
fi
