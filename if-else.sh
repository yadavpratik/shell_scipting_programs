#!/bin/bash

echo "lets practice if-else"

echo "Check User age is greater than 18 or Not"

read -r -p "Enter Your name :" name
read -r -p "Enter Your age :" age



if [ $age -gt 18 ];
then
    echo "The user $name is 18+"
elif [ $age -lt 18 ];
then
    echo "The user $name is not 18+"

fi
