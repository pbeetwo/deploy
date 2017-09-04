#!/bin/bash

# Install latest version of Ansible if not installed and execute playbook deploywork.yml

if test -e /usr/bin/ansible ; then
	echo "Ansible already installed"
else
	apt-get install software-properties-common -y
        apt-add-repository ppa:ansible/ansible -y
        apt-get update
        apt-get install ansible -y
fi

/usr/bin/ansible-playbook deploywork.yml
