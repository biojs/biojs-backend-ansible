#!/bin/bash

# Use the following if user is root
ansible-playbook ./prod/deploy.yml --private-key=<Path-to-ssh-keys> -K -u <Username> -i ./prod/hosts -vvv

# Use the following for sudo non-root users
ansible-playbook ./prod/deploy.yml --private-key=~/.ssh/id_rsa -K -u megh --extra-vars "ansible_sudo_pass=changeme" -i ./prod/hosts -vvv
