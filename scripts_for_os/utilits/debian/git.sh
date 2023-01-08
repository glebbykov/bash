#!/bin/bash

sudo apt update && apt upgrade

sudo apt install -y git

git --version

# Prompt the user to enter their name and email
read -p "Enter your name: " name
read -p "Enter your email: " email

# Set the user's name and email in Git
git config --global user.name "$name"
git config --global user.email "$email"
echo 'git config --list'
