#!/bin/bash

echo "Enter any of the option"
echo "a for date"
echo "b for pwd"
echo "c for ls -ll"

read -p "enter the option: " choice

case $choice in 
	a) 
		echo "Todate date is $(date)";;
	b) pwd;;
	c) ls -ll;;
	*) echo "Provide a valid input"
esac
