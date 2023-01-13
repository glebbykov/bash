#!/bin/bash

sudo zypper refresh

sudo zypper install -y ansible

ansible --version

echo "Ansible has been successfully installed!"
