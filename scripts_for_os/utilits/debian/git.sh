#!/bin/bash

sudo yum update -y

sudo yum install -y git

git --version

# Prompt the user to enter their name and email
read -p "Enter your name: " name

# Set the user's name and email in Git
git config --global user.name "$name"
git config --global user.email "$email"
echo 'git config --list'
