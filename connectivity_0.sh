#!/bin/bash

read -p "Enter the site fqdn: " site

ping -c 1 $site

if [[  $? -eq 0 ]]
then
	echo "Successfully connected"
else
	echo "Not connected"

fi
