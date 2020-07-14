#!/usr/bin/ksh

#########################
# @author: Burhan Otour
#########################

# The command end by the end of the line or when encountering  ';' 

print -n "Name "; read name; print ""

#################
# Variables
#################

# only names with no blanks
state="US"
price=90

# To use a variabe we put $
print $price

# Arrays 

# Set an array
numbers[1]=4

# Get the number of an array
print ${numbers[1]}

# Get all numbers
print ${numbers[*]}

# Get the number of elements 
print ${#numbers[*]}

#######################
# if then fi
#######################
value=7
if [[ $value  -eq 7 ]];then
    print "$value is 7"
fi

if [[ $name = "Burhan" ]];then
    print "Your welcome, Mr. ${name}."
elif [[ $name = "Hanna" ]];then
    print "Hello, ${name}, who are you?"
else 
    print "Good bye, ${name}!"
fi
