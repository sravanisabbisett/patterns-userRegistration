#!/bin/bash -x

read -p "Ennter your firstname: " fname
read -p "Enter your last name: " lname

firstname="^([[:upper:]]{1})([[:lower:]]{2})([a-z]*)$"
lastname="^([[:upper:]]{1})([[:lower:]]{2})([a-z]*)$"

if [[ $fname =~ $firstname ]]
then
   echo "Valid first name"
else
   echo "Invalid first name"
fi


if [[ $lname =~ $lastname ]]
then
	echo "Valid lastname"
else
	echo "Invalid lastname"
fi
