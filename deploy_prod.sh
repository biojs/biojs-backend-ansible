#!/bin/bash

ansible-playbook ./prod/deploy.yml --private-key=<Path-to-ssh-keys> -K -u <Username> -i ./prod/hosts -vvv
