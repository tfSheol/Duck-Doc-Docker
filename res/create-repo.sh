#!/bin/bash
#############################
# By Teddy Fontaine - Sheol #
#       ----------          #
#          V1.0             #
#############################

if [ $# == 1 ]; then
	repositories=$(blih -u $USERNAME -t "$(sha512 -s $PASSWORD -q)" repository list)
	repository=$(echo "$repositories" | grep -i "$1")
	if [ $? -eq 1 ] && [ "$repository" != "$1" ]; then
		blih -u $USERNAME -t "$(sha512 -s $PASSWORD -q)" repository create $1
	else
		echo "repository $1 already exists!"
	fi
	blih -u $USERNAME -t "$(sha512 -s $PASSWORD -q)" repository setacl $1 gecko r
	blih -u $USERNAME -t "$(sha512 -s $PASSWORD -q)" repository setacl $1 ramassage-tek r
	blih -u $USERNAME -t "$(sha512 -s $PASSWORD -q)" repository setacl $1 ramassage-tek r
	echo "ACL:"
	blih -u $USERNAME -t "$(sha512 -s $PASSWORD -q)" repository getacl $1
else
	echo "USAGE: create-repo <repository_name>"
	echo "\tinfo: Create the repository on blih with ACL for gecko:r and ramassage-tek:r;"
fi