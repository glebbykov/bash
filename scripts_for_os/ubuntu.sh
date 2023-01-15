#!/bin/bash

echo "Select which utility packages to install:"
echo "1. Docker"
echo "2. Git"
echo "3. Python3"
echo "4. Ansible"
echo "5. Exit"

read -p "Enter your selections (1-5, separated by a space): " -a selections

# The case statements are nested within a loop to allow the user to make multiple selections
for selection in "${selections[@]}"
do
  case "$selection" in
    1)
      scripts_for_os/utilits/ubuntu/docker.sh
      ;;
    2)
      scripts_for_os/utilits/ubuntu/git.sh
      ;;
    3)
      scripts_for_os/utilits/ubuntu/python3.sh
      ;;
    4)
      scripts_for_os/utilits/ubuntu/ansible.sh
      ;;
    5)
      exit 0
      ;;
    *)
      echo "Error: Invalid selection"
      exit 1
      ;;
  esac
done