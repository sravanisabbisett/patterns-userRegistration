#!/bin/bash -x

read -p "Ennter your firstname: " fname
read -p "Enter your last name: " lname
read -p "Enter your your email: " mail
read -p "Enter your mobile number: " number

firstname="^([[:upper:]]{1})([[:lower:]]{2})([a-z]*)$"
lastname="^([[:upper:]]{1})([[:lower:]]{2})([a-z]*)$"
email="^([a-zA-z_]{1,}[.-+_]?[a-zA-z0-9]+)\@([a-z0-9]+)\.([a-z]{2,5})$"
email1="^([a-zA-z_]{1,}[.-+_]?[a-zA-z0-9]+)\@([a-z0-9]+)\.([a-z]{2,5})\.([a-z]{2,5})$"
phonenumber="([0-9]{2})[: :][6-9]{1}[0-9]{9}"


if [[ $lname =~ $lastname ]]
then
   echo "Valid lastname"
else
   echo "Invalid lastname"
fi

if [[ $fname =~ $firstname ]]
then
   echo "Valid first name"
else
   echo "Invalid first name"
fi


if [[ $mail =~ $email || $mail =~ $email1 ]]
then
	echo "Valid email"
else
	echo "Invalid email"
fi

if [[ $number =~ $phonenumber ]]
then
   echo "Valid phonenumber"
else
   echo "Invalid phonenumber"
fi
