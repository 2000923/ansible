#!/bin/bash
#
# packages and install
sudo apt install python3 python3-pip curl git ssh -y
sudo pip3 install ansible-core
ansible-galaxy collection install community.general
ansible-galaxy collection install ansible.posix
