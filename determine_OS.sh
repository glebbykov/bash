#!/bin/bash

# Identify the Linux platform
platform=$(cat /etc/*-release | grep -E '^ID=' | cut -d '=' -f 2 | tr -d '"')

# Identify the platform version
version=$(cat /etc/*-release | grep -E '^VERSION_ID=' | cut -d '=' -f 2 | tr -d '"')

echo "Detected platform: $platform $version"

  case "$platform" in
    centos)
      scripts_for_os/centos.sh
      ;;

    debian)
      scripts_for_os/debian.sh
      ;;

    fedora)
      scripts_for_os/fedora.sh
      ;;

    ubuntu)
      scripts_for_os/ubuntu.sh
      ;;
    *)
      # Error message
      echo "Error: This script does not include scripts for installing utilities for the system"
      exit 1
      ;;
  esac
