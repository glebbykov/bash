#!/bin/bash

sudo zypper refresh

opensuse_repo="https://download.opensuse.org/repositories/security:SELinux/SLE_15_SP3/security:SELinux.repo"

sudo zypper addrepo $opensuse_repo

sudo zypper remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine \
                  runc

sudo zypper addrepo https://download.docker.com/linux/sles/docker-ce.repo

sudo zypper install docker-ce docker-ce-cli containerd.io docker-compose-plugin

sudo systemctl start docker

sudo systemctl enable docker

sudo docker run hello-world

sudo usermod -aG docker $USER

docker-compose --version

docker run --rm hello-world
