#!/bin/bash

read -p "Enter first number: " x
read -p "Enter second number: " y

echo "Enter any of the math operation: "

echo "a for addition +"
echo "b for subtraction -"
echo "c for multiplication +"
echo "d for division"


read -p "Enter the choice: " choice

case $choice in
	a) let add=$x+$y
		echo "Add $x + $y = $add"
		;;
        b) let sub=$x-$y
		echo "Sub $x - $y = $sub"
		;;
        c) let mul=$x*$y
		echo "Multiplication $x x $y = $mul"
		;;
	d) if [[ $y -ne 0 ]] 
	then
		let div=$x/$y
		echo "Div $x / $y = $div"
	else 
		echo "Error: Division by zero is not allowed"
	fi
		;;
	*) 
		echo "Enter a valid choice"
		;;
esac
