#!/bin/bash

#set -x

#print odd & even numbers

for i in {1..20}
do
	let r=$i%2
	if [[  r -eq 0 ]]
	then
		echo "The number $i is even"
	else
		echo "The number $i is odd"
	fi
done


