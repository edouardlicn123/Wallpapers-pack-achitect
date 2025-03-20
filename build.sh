#!/bin/bash

# Version
VERSION="0.3-3"

# Packname and Arch
PACKAGE_BASE="haikuos_wallpapers_achitactt"
ARCH="any"

# package name
PACKAGE_NAME="${PACKAGE_BASE}-${VERSION}-${ARCH}.hpkg"

# Build a package

output=$(package create -b "$PACKAGE_NAME" 2>&1)
exit_status=$?


echo "About the package create command,system say:"
echo
echo "$output"


if [ $exit_status -ne 0 ]; then
    echo "package create failed,pls check again."
    exit 1
fi


output=$(package add "$PACKAGE_NAME" data 2>&1)
exit_status=$?


echo "About the package add command,system say:"
echo
echo "$output"

if [ $exit_status -ne 0 ]; then
    echo "package add failed,pls check again."
    exit 1
fi
    
echo "All success,pls check your Haiku package."