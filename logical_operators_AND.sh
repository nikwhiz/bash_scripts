#!/bin/bash

<<comment
a) condtion1 && condition2  ==> if both are true then true else false
comment

<<comment
for string value you cant use -eq instead use ==
comment

read -p "Enter you age: " age
read -p "Enter you country: " country

if [[ $age -gt 18 ]] && [[ $country == India ]]
then 
	echo "You can Vote"
else
	echo "You cannot Vote"
fi
