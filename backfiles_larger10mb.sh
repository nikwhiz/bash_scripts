#!/bin/bash

<<comment
compress files that are older than 10MB and move then to archive folder
comment

#variables
path=/c/Users/Admin/Documents/bash_scipts/repo
days=10
depth=1
run=0

#check ifdir is present or not
if [ ! -d $path ]
then
	echo "dir does not exists: $path"
	exit 1
fi

#create archive folder if not present
if [ ! -d "$path/archive" ];
then
	mkdir "$path/archive"
fi

#find the list of files larger than 20mb
for i in `find $path -maxdepth $depth -type f -size +20`
do
if [ $run -eq 0 ]
then 
	gzip $i || exit 1
	mv $i.gz $path/archive
fi
done
