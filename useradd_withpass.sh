#!/bin/bash

#script should be executed by root user only
if [[ "${UID}" -ne 0 ]]
then
        echo "Please run with sudo or root"
        exit 1
fi

#user should provide one arg as username else tell him
if [[ "${#}" -lt 1 ]]
then
        echo "Usage ${0} USER_NAME [COMMENT]..."
        echo "Create user with name username and comments filed of comment"
        exit 1
fi

#Store first arg as username
user_name="${1}"
echo $user_name

#Incase of more than one arg, store it as comment
shift
comment="${@}"
echo $comment

#password
password=$(date +%s%N)
echo "$password"

#create user -c for comment and -m home dir
useradd -c "$comment" -m "$user_name"

#check if user is created or not
if [[ $? -ne 0 ]]
then
        echo "User could not be created"
        exit 1
fi

#set password for user
echo "$user_name:$password" | chpasswd

#check if password is set or not
if [[ $? -ne 0 ]]
then
        echo "password not set"
        exit 1
fi

#force password change after user login
chage -d 0 "$user_name"

#check if password change policy is implementend
if [[ $? -ne 0 ]]
then
        echo "password change policy not implemented"
        exit 1
fi


