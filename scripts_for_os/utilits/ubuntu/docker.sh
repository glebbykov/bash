#!/bin/bash

# remove old versions of Docker
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
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add the Docker repository to APT sources
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-get install -y \
docker-ce \
docker-ce-cli \
containerd.io \
docker-compose-plugin

sudo docker run hello-world
docker-compose --version

echo "Docker and Docker Compose have been successfully installed!"