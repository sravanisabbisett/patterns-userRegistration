#!/bin/bash -x

read -p "Ennter your firstname: " fname
read -p "Enter your last name: " lname
read -p "Enter your your email: " mail
read -p "Enter your mobile number: " number
read -p "Enter your password: " pass

firstname="^([[:upper:]]{1})([[:lower:]]{2})([a-z]*)$"
lastname="^([[:upper:]]{1})([[:lower:]]{2})([a-z]*)$"
email="^([a-zA-z_]{1,}[.-+_]?[a-zA-z0-9]+)\@([a-z0-9]+)\.([a-z]{2,5})$"
email1="^([a-zA-z_]{1,}[.-+_]?[a-zA-z0-9]+)\@([a-z0-9]+)\.([a-z]{2,5})\.([a-z]{2,5})$"
phonenumber="([0-9]{2})[: :][6-9]{1}[0-9]{9}"
password="^([[:upper:]]{1}[[:lower:]]{4,}[0-9]{2,}[@#$^]{1})$"


if [[ $fname =~ $firstname && $lname =~ $lastname && $number =~ $phonenumber && $pass =~ $password ]]
then
   if [[ $mail =~ $email || $mail =~ $email1 ]]
   then
      echo "user registered sucessfully"
   else
      echo "Please enter valid details"
   fi
else
   echo "Please enter valid details"
fi

