#!/bin/bash

# Identify the Linux platform
platform=$(cat /etc/*-release | grep -E '^ID=' | cut -d '=' -f 2 | tr -d '"')

# Identify the platform version
version=$(cat /etc/*-release | grep -E '^VERSION_ID=' | cut -d '=' -f 2 | tr -d '"')

echo "Detected platform: $platform $version"

if [ "$platform" == "SLES" ]; then
  # Identify the SUSE Linux brand
  brand=$(cat /etc/SUSE-brand | sed -n '1p')
  brand_version=$(cat /etc/SUSE-brand| grep 'VERSION = '| cut -d '=' -f 2 | tr -d ' ')
  echo "Detected brand: $brand $brand_version"
  case "$brand" in 
    openSUSE)
      scripts_for_os/suse.sh
      ;;
  esac
else
  case "$platform" in
    centos)
      scripts_for_os/centos.sh $version
      ;;

    debian)
      scripts_for_os/debian.sh $version
      ;;

    fedora)
      scripts_for_os/fedora.sh $version
      ;;

    ubuntu)
      scripts_for_os/ubuntu.sh $version
      ;;
    *)
      # Error message
      echo "Error: This script does not include scripts for installing utilities for the system"
      exit 1
      ;;
  esac
fi
