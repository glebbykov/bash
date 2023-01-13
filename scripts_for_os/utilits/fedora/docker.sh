#!/bin/bash

# Remove any existing versions of Docker and its components
sudo dnf remove docker \
docker-client \
docker-client-latest \
docker-common \
docker-latest \
docker-latest-logrotate \
docker-logrotate \
docker-selinux \
docker-engine-selinux \
docker-engine

sudo dnf -y update

sudo dnf install -y \
  dnf-plugins-core \
  ca-certificates \
  curl \
  gnupg2 \
  passwd

# Add Docker's official GPG key
sudo mkdir -p /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/fedora/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Add the Docker repository to the package manager
sudo dnf config-manager \
  --add-repo \
  https://download.docker.com/linux/fedora/docker-ce.repo

sudo dnf update

# Install the latest version of Docker
sudo dnf install -y \
docker-ce \
docker-ce-cli \
containerd.io

# Install Docker Compose
sudo dnf install -y python3-pip
sudo pip3 install docker-compose

sudo systemctl start docker
sudo systemctl enable docker

sudo docker run hello-world

echo "Docker and Docker Compose have been successfully installed!"
