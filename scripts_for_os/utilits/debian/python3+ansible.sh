#!/bin/bash

sudo apt-get update

# Install Python 3 and pip
sudo apt-get install -y python3 python3-pip

# Install the latest version of ansible
sudo pip3 install ansible

echo "Python 3 and Ansible have been successfully installed!"
