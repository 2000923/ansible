#!/bin/bash
#
# packages and install
SSH_HOME="~/.ssh"
sudo apt update --force-yes -y
sudo apt install python3 python3-pip curl git ssh sshpass -y --force-yes
sudo pip3 install ansible-core
if [[ ! -d ${SSH_HOME} ]]; then
  mkdir ~/.ssh && chmod 755 ~/.ssh
fi
ssh-keygen -t rsa -b 2048 -N "" -f ~/.ssh/$(whoami)/id_rsa
cat ${SSH_HOME}/id_rsa.pub > ~/.ssh/authorized_keys
ansible-galaxy collection install community.general
ansible-galaxy collection install ansible.posix
