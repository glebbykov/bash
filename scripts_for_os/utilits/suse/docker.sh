#!/bin/bash

sudo zypper refresh

sudo zypper addrepo --name "Docker Repository" https://download.docker.com/linux/sles/15/x86_64/stable/

sudo zypper install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

sudo systemctl start docker

sudo systemctl enable docker

sudo docker run hello-world

sudo usermod -aG docker $USER

echo "Please log out and log back in for the changes to take effect"

docker-compose --version

echo "Docker and Docker Compose have been successfully installed!"
