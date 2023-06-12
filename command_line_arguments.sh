#!/bin/bash

echo "Command line arguments"

echo "First command     : " ${0}
echo "second Coammand   : " ${1}
echo "Third Command     : " ${2}


name=${1}
age=${2}


echo ${1} 
echo ${2} 
echo ${3}
echo ${4}
echo ${5}
echo ${6}
echo ${7}
echo ${8}
echo ${9}
echo ${11}
echo ${10}
echo ${12}

echo "I am ${name} and my age is ${age}"

echo $#
echo "${*}"
echo $$
echo "$@"