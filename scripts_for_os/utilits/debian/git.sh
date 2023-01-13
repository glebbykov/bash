#!/bin/bash

sudo apt update -y && sudo apt upgrade -y

sudo apt install -y git

git --version

# Prompt the user to enter their name and email
read -p "Enter your name: " name
read -p "Enter your email: " email

# Set the user's name and email in Git
git config --global user.name "$name"
git config --global user.email "$email"
git config --list
