#!/bin/bash
#############################
# By Teddy Fontaine - Sheol #
#       ----------          #
#          V1.0             #
#############################

function upload {
	blih -u $USERNAME -t "$(sha512 -s $PASSWORD -q)" sshkey upload /root/.ssh/id_rsa_coding.pub
}

function generate {
	echo "generate sshkey..."
	ssh-keygen -t rsa -N "" -q -f /root/.ssh/id_rsa_coding
	upload
	if [ $? -eq 1 ]; then
		blih -u $USERNAME -t "$(sha512 -s $PASSWORD -q)" sshkey delete $(echo $(whoami)@$(hostname))
		upload
	fi
}

if [ -f /root/.ssh/id_rsa_coding ]; then
	key_name=$(cat /root/.ssh/id_rsa_coding.pub | cut -d ' ' -f 3-)
	blih -u $USERNAME -t "$(sha512 -s $PASSWORD -q)" sshkey delete $key_name
	rm /root/.ssh/id_rsa_coding*
	generate
else
	generate
fi