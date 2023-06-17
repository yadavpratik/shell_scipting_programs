#!/bin/bash

echo -x

echo "Welcome to git Automation script"

check_git_install(){
	echo "checking your git version..."
	Version=$(git --version)
	echo "$Version"
}

check_git_install

pwd
git_init(){
	echo "checking for git init ..."
	sleep 04
	if git status>/dev/null          #we can also use if [ -d .git ]
	then
		echo "git is already initialise"
	else
		echo "git is not initialise"
		echo "Wait for initalising git into your dir"
		git init
		sleep 04
		echo "git initialise succecfully"
	fi
}
git_init


git_add(){
	git add .

}

git_add

git_commit(){
	echo "checking for git commit..."
	sleep 04	
	if git commit -m "update commit" 2>/dev/null
	then
		echo "initial commit sucessfully"
	else
		echo "Author identity unknown"
		read -p "please provide your github email : " email
		read -p "please provide your name : " name
		echo "please wait we authenticating your identity..."
	    git config --global user.email "$email"
       	git config --global user.name "$name"			       
		echo "user identify succesfully"

	fi
}
git_commit

check_remote_dir(){
	echo "checking for remote repositry..."
	sleep 05
	if git remote -v | grep -q "origin"
	then
		git remote -v
  	else
		echo "Remote repository 'origin' does not exist."
		read -p "Enter the repo path : " repo
		git remote add origin "$repo"
		echo "remote origin added sucessfully"

	fi	
}
check_remote_dir

git_push(){
	echo "please wait we push your code on gtihub repositry..."
	git push origin master
	echo "your code sucessfully push on github"

}
git_push




