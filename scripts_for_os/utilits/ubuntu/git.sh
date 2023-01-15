#!/bin/bash

sudo apt-get update
sudo apt-get install -y git

# Prompt the user to enter their name and email
read -p "Enter your name: " name
read -p "Enter your email: " email

# Set the user's name and email in Git
git config --global user.name "$name"
git config --global user.email "$email"
git config --list

echo "Git has been successfully installed!"
