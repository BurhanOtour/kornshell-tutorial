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
    print "Hello, $name, who are you?"
else 
    print "Good bye, ${name}!"
fi


##############
# case esac
##############
invitation="invitation"
declination="declination"

case $name in 
    john|fred) print ${invitation};;
    martin)    print $declination;;
    *)         print "Wrong name...";;
esac

##################
# Looping
##################
count=14

while [[ $count -gt 0 ]];do
    print "\$count is $count"
    (( count -= 1 ))
done

# Do .. while like loop
until [[ $answer = "yes" ]];do
    print -n "Please enter \"yes\": "
    read answer
    print ""
done


numbers[0]=12
number[2]=13
numbers[4]=5

for num in 1 2 3  423
do
    if [[ -d $foo ]];then
        print "$foo is a dictionary"
    else 
        print "$foo is not a dictionary"
    fi
done


for num in {1..10}
do 
    echo "Welcome $num times"
done

# loop with file example
# Check for a missing file from the list of files
files="/etc/passwd /etc/group1 /etc/hosts"
for f in $files
do
    if [ ! -f $f ]
    then 
        echo "$f file is missing"
    fi
done


for car in "BMW" "VW" "MAZDA" "NISSAN"
do 
    print "$car"
done


for f in $(cat data/input.txt)
do
    print -n $f
done

file_path=data/files.txt
for f in $(cat ${file_path})
do
    if [[ $f = *.zip ]]
    then
        continue
    else
        print "process: $f"
    fi
done
