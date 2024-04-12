#! /bin/bash

# read command reads user input from keyboard
echo "---------------------------------------"
echo "Input a single name. No variable is set to receive it."
# You will be prompted a new line to input.
read
echo "The name is $REPLY"
# Execution is:
# Input a single name. No variable is set to receive it.
# Jian Lao
# The name is Jian Lao

echo "---------------------------------------"
echo "Input a single name here..."
# You will be prompted a new line to input.
read name
echo "The name is $name"
# Execution is:
# Input a single name here...
# Mr Jian Lao
# Input name is Mr Jian Lao

echo "---------------------------------------"
echo "Input 2 names here..."
read name1 name2
echo "Input names are $name1. $name2"
# Execution is:
# Input 2 names here...
# Jian Lao Momo
# Input names are Jian. Lao Momo

# [Conclusion]
# If you input several words, separated with space, and they are upposed to 
# assigned to n variables, the first n-1 variable will be assigned with the 
# first n-1 words which are separated with space, and reaming words will be
# assigned to the last variable.

echo "---------------------------------------" 
echo "Input names in array form..."
read -a names
echo "names[0] is ${names[0]}, names[1] is ${names[1]} "
# Execution is:
# Input names in array form...
# Jian Lao Yu Han
# names[0] is Jian, names[1] is Lao 

echo "---------------------------------------"
# What if I want to input at the same line with "Input your name here..."?
read -p "Input a single name here : " User_Name
echo "Input name is $User_Name"
# Execution is:
# Input a single name here : Kukumalu Han
# Input name is Kukumalu Han

echo "---------------------------------------"
# How to input password that terminal doesn't show detailed input?
read -p "User Name : " User_Name
read -sp "User Password : " User_Pass
echo "User Name is : " $User_Name
echo "User Pass is : " $User_Pass
# Execution is:
# User Name : Jian Lao
# User Password : [keyin 123456] User Name is :  Jian Lao
# User Pass is :  123456

echo "---------------------------------------"
# How to solve the problem above?
read -p "User Name : " User_Name
read -sp "User Password : " User_Pass
echo
echo "User Name is : " $User_Name
echo "User Pass is : " $User_Pass
# Execution is:
# User Name : Jian Lao
# User Password : 
# User Name is :  Jian Lao
# User Pass is :  123456



