#!/bin/bash

myarray=( 1 2 30.5 hey hello buddy )
#index means 1=0 2=1 30.5=2 hey=3 its given numbersing like arg

echo "the value of the array is ${myarray[*]}"
#complete array is print

echo "the value of the 3rd index is ${myarray[3]}"
#only the third array is print

#to find the length of the array its gives the count
echo  "the length of the array is ${#myarray[*]}"

echo "values from index 2-3 ${myarray[*]:2:3}"
#:2:3 means from 2nd index onward the three values



#update array or add something to your existing arrray
myarray+=( new 50 60)
echo "the updated array is ${myarray[*]}"

