#!/bin/bash

read -p "enter the marks: " x

if [ $x -ge 80 ]
then 
	echo "First Divisons"

elif [ $x -ge 60 ]
then 
	echo "Second Division"

elif [ $x -ge 50 ]
then
	echo "Third Division"

else
	echo "Pass Class"
fi


