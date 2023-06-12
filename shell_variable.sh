#!/bin/bash

echo "How to use variable in shell scripting"

#Valid Variable Names Rule
#variable names should be start with Alphabet,_ not from numbers
#varible name should be alpha,alpha-numeric.

#Example of Varibles

echo "Diffrent form of variable"

variable='variable'
variable1='variable1'
_variable='_variable'
VARIABLE='VARIABLE'
Variable='Variable'

echo ${variable} 
echo ${variable1} 
echo ${_variable} 
echo ${VARIABLE} 
echo ${Variable}

#Two Types of variables
