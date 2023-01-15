#!/bin/bash

sudo apt-get update
sudo apt-get install -y ansible

ansible --version

echo "Ansible has been successfully installed!"