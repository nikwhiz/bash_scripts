#!/bin/bash

<<comment
a) condtion1 && condition2 || comdition3 ==> if both are true then true else false
comment

<<comment
for string value you cant use -eq instead use ==
comment

read -p "Enter you age: " age

[[ $age -gt 18 ]] && echo "Your are Adult" || echo "You are minor"
