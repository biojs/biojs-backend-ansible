#!/bin/bash

# Use the following if user is root
ansible-playbook ./prod/deploy.yml --private-key=~/.ssh/id_rsa -K -u ubuntu -i ./prod/hosts -vvv

# Use the following for sudo non-root users
# ansible-playbook ./prod/deploy.yml --private-key=~/.ssh/id_rsa -K -u ubuntu --extra-vars "ansible_sudo_pass=changeme" -i ./prod/hosts -vvv
