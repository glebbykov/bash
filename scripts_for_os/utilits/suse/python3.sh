#!/bin/bash

sudo zypper refresh

sudo zypper install -y python3 python3-pip

python3 --version

echo "Python3 has been successfully installed!"
