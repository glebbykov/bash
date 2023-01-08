#!/bin/bash

utilities="docker git python3 ansible"

echo "Checking which utilities are installed..."

for utility in $utilities; do
  if command -v "$utility" > /dev/null 2>&1; then
    printf "%-10s %s\n" "$utility:" "Installed"
  else
    printf "%-10s %s\n" "$utility:" "Not installed"
  fi
done

echo "Done!"
