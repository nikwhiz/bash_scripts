#!/bin/bash

Path=$(df -h | grep -w "C:" | awk '{print $6}' | tr -d %)

if [[ $Path -gt 90 ]]
then
	echo "The Disk space utilization of is High i.e $Path %"
else
	echo "The Disk space utilization is normal i.e $Path %"
fi
