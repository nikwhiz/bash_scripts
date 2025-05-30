#!/bin/bash

#print only odd numbers

for i in {1..20}
do 
	let r=$i%2
	if  [[ $r -eq 0 ]]
	then
		continue
	fi
	echo "number $i is odd"
done
