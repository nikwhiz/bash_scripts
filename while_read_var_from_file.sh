#!/bin/bash

while read myvar
do
	echo "My character is $myvar"
done < files.txt
