#!/bin/bash

sudo dnf update -y

sudo dnf install -y git

git --version

read -p "Enter your name: " name
read -p "Enter your email: " email

git config --global user.name "$name"
git config --global user.email "$email"
git config --list
