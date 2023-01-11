#!/bin/bash

# Identify the Linux platform
platform=$(cat /etc/*-release | grep -E '^ID=' | cut -d '=' -f 2 | tr -d '"')

# Identify the platform version
version=$(cat /etc/*-release | grep -E '^VERSION_ID=' | cut -d '=' -f 2 | tr -d '"')

echo "Detected platform: $platform $version"

# Depending on the platform that is detected, the corresponding target script is launched
case "$platform" in

  CentOS)
    scripts_for_os/centos.sh
    ;;

  Debian)
    scripts_for_os/debian.sh
    ;;

  Fedora)
    scripts_for_os/fedora.sh
    ;;

  SLES)
    scripts_for_os/sles.sh
    ;;
    
  Ubuntu)
    scripts_for_os/ubuntu.sh
    ;;
  *)
    # Еrror message
    echo "Error: This script does not include scripts for installing utilities for the system"
    exit 1
    ;;
esac
