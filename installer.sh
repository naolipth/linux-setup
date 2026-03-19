#!/usr/bin/env bash
#
# Config setup after freshly installing an OS

set -xeuo pipefail

echo "Running system update..."
sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get autoremove -y

REPO_URL="https://github.com/naolipth/linux-setup.git"
INSTALL_DIR="$HOME/Projects"


