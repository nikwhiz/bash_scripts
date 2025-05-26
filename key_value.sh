#!/bin/bash

#how to store the key valus pairs

declare -A myarray
myarray=( [name]=ricky [age]=28 [city]=Delhi)



echo "My name is ${myarray[name]}"

echo "My age is ${myarray[age]}"


echo "My city name is ${myarray[city]}"




#Length of variables
#use when you have phone numbers and you want to check len is ok
myvar="Hey Buddy, How are u"

lenmyvar="${#myvar}"

echo "the len of my var is ${lenmyvar}"

#pprint the var in upper and lower case

echo "the UPPER case is ${myvar^^}"
echo "the lower case is ${myvar,,}"





#to replce a string
newvar="${myvar/Buddy/Ricky}"
echo "new var is ${newvar}"





#to slice a string characters, fourth char onward next six char
echo "after slice .${myvar:4:6}"
