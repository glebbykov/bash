#!/bin/bash

# Identify the Linux platform
platform=$(cat /etc/*-release | grep -E '^ID=' | cut -d '=' -f 2 | tr -d '"')

# Identify the platform version
version=$(cat /etc/*-release | grep -E '^VERSION_ID=' | cut -d '=' -f 2 | tr -d '"')

echo "Detected platform: $platform $version"

# Depending on the platform detected, the target script is launched
case "$platform" in

  CentOS)
    ./centos.sh
    ;;

  Debian)
    ./debian.sh
    ;;

  Fedora)
    ./fedora.sh
    ;;

  Raspbian)
    ./raspbian.sh
    ;;

  RHEL)
    ./rhel.sh
    ;;

  SLES)
    ./sles.sh
    ;;
    
  Ubuntu)
    ./ubuntu.sh
    ;;
  *)
    # Еrror message
    echo "Error: Unrecognized platform"
    exit 1
    ;;
esac
