#!/bin/bash

<< comment 
this script has multiple eg of variables
comment

name=ricky
surname=martin

echo "My name is $name $surname."


#same var can be changed within same script
name=trumpa

echo "My name is $name $surname."


HOSTNAME=$(hostname)

echo "Hi my name is $name $surname. My server hostname $HOSTNAME OND"


##read only variable
readonly nickname="pintu"
#nickname="tinku"

echo "My nick name is $nickname."

#It gives error that tinku cannot be used as pintu is readonly varit cannot be changed









