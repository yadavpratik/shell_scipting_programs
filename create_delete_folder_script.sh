#!/bin/bash

echo "script to Create new folder and delete the folder"
pwd
echo "present_working_dirctory"
read -r -p "Enter Folder name :" Name

mkdir "${Name}"
echo "..."
sleep 2
echo "Created folder : ${Name}"
ls -l
pwd
sleep 2
echo "..."
cd "${Name}" || exit
pwd
cd ..
\rm -rf $Name
pwd
echo " Delete folder : ${Name}"
ls -l

sleep 10