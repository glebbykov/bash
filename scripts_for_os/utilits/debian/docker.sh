#!/bin/bash

sudo apt-get remove docker docker-engine docker.io containerd runc

sudo apt-get update

# Install HTTPS packages 
sudo apt-get install -y \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg-agent \
  software-properties-common

# Add Docker's official GPG key
sudo mkdir -p /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Add the Docker repository to APT sources
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update the package index again
sudo apt-get update

# Install the latest version of Docker
sudo apt-get install -y \
docker-ce \
docker-ce-cli \
containerd.io \
docker-compose-plugin

sudo docker run hello-world

echo "Docker and Docker Compose have been successfully installed!"
