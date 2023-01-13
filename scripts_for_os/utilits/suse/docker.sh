#!/bin/bash

sudo zypper refresh

sudo zypper install docker docker-compose docker-compose-switch

sudo systemctl start docker

sudo systemctl enable docker

sudo docker run hello-world

sudo usermod -aG docker $USER

docker-compose --version

docker run --rm hello-world
