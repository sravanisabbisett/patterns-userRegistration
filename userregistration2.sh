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
password="(.*[[:upper:]].*)(.*[[:lower:]].*)(.*[0-9].*)([@$%&]{1})"


if [[ $fname =~ $firstname ]]
then
   if [[ $lname =~ $lastname ]]
   then
      if [[ $mail =~ $email || $mail =~ $email1 ]]
      then
         if [[ $number =~ $phonenumber ]]
         then
            if [[ ${#pass} -ge 8 ]]
            then
               if [[ $pass =~ $password ]]
               then
                  echo "user registered sucessfully"
               fi
            else
               echo "please Enter valid password"
            fi
         else
            echo "please enter valid mobile number"
         fi
      else
         echo "Enter valid user email id"
      fi
   else
      echo  "Enter valid lastname"
   fi
else
   echo "Enter valid firstname"
fi
