#!/bin/bash

echo "Select which utility packages to install:"
echo "1. Docker"
echo "2. Git"
echo "3. Python"
echo "4. Python3"
echo "5. Ansible"
echo "6. Exit"

read -p "Enter your selections (1-6, separated by a space): " -a selections

# The case statements are nested within a loop to allow the user to make multiple selections
for selection in "${selections[@]}"
do
  case "$selection" in
    1)
      utilits/docker.sh
      ;;
    2)
      utilits/git.sh
      ;;
    3)
      utilits/python.sh
      ;;
    4)
      utilits/python3.sh
      ;;
    5)
      utilits/ansible.sh
      ;;
    6)
      # Exit the script
      exit 0
      ;;
    *)
      # Еrror message
      echo "Error: Invalid selection"
      exit 1
      ;;
  esac
done
