#!/bin/bash

sudo apt-get update

sudo apt-get install -y python3 python3-pip
sudo pip3 install ansible

echo "Python 3 and Ansible have been successfully installed!"
echo "Ansible version: $(ansible --version | head -n 1 | awk '{print $3}'| tr -d ']')"
