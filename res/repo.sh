#!/bin/bash
#############################
# By Teddy Fontaine - Sheol #
#       ----------          #
#          V1.0             #
#############################

if [ $# == 1 ]; then
	repositories=$(blih -u $USERNAME -t "$(sha512 -s $PASSWORD -q)" repository list)
	repository=$(echo "$repositories" | grep -i "$1")
	if [ $? -eq 0 ] && [ "$repository" == "$1" ]; then
		if [ -z "$USER" ]; then
			git clone git@git.epitech.eu:/$USERNAME/$1
		else
			git clone git@git.epitech.eu:/$USER/$1
		fi
	else
		echo "$repositories"
		echo ""
		echo "Repository not found!"
	fi
else
	echo "USAGE: repo <repository_name>"
	echo "\tinfo: Clone the repository in the current directory if was create on blih;"
fi