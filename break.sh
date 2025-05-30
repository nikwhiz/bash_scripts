#!/bin/bash

n=16

for i in {1..20}
do
	echo "number is $i"
#break the loop
	if [[ $n -eq $i ]]
	then 
		echo "Number $n is found"
		break

	fi
done

