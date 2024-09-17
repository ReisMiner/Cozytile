#!/bin/env bash

# Detect distribution
if [ -f /etc/os-release ]; then
    . /etc/os-release
    echo "You are using $NAME ($VERSION)"
fi

# Use a case statement to handle different distributions
case "$ID" in
    arch)
        echo "Detected Arch Linux. Running install_arch.sh..."
        ./Scripts/install_arch.sh
        ;;
    fedora)
        echo "Detected Fedora. Running install_fedora.sh..."
        ./Scripts/install_fedora.sh
        ;;
    *)
        echo "Unsupported distribution: $ID"
        exit 1
        ;;
esac