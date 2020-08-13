#!/bin/bash -x

read -p "Ennter your firstname: " fname

firstname="^([[:upper:]]{1})([[:lower:]]{2})([a-z]*)$"

if [[ $fname =~ $firstname ]]
then
	echo "Valid first name"
else
	echo "Invalid first name"
fi
