# Linux Software Installation Scripts

This repository contains scripts for detecting the type of Linux and installing various software on different Linux platforms.

## Usage

1. Clone the repository: 
git clone https://github.com/glebbykov/utilits_install.git
The script for installing git can be taken directly from the repository by going to utilits_install/scripts_for_os/utilits/your_type_operating_system/git.sh
2. Navigate to the root directory of the repository:
cd utilits_install
3. Run the main script to detect the Linux platform and select software to install:
./determine_OS+install_utilits.sh
Select the utilities you want to install by entering the corresponding numbers from 1 to 4. You can select multiple options by separating them with a space. Press 5 to exit the utility menu.
4. Follow the prompts to select the software you want to install.
5. Run the script to check the installed software:
**./utility-check.sh**

## Supported Platforms

- __Ubuntu__
- __Fedora__
- Debian
- Centos

## Supported Software

- Python3
- Ansible
- Docker + Docker-compose
- Git 

## Note

- These scripts are provided as-is and are intended for educational purposes only.
- Always review the code and make sure it's safe to run on your system.
- Additional software can be added upon request.
