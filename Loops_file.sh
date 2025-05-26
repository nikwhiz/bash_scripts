#!/bin/bash

FILE="/c/Users/Admin/Documents/bash_scipts/repo/files.txt"

for i in $(cat $FILE)
do
	echo "The name is $i"
done
