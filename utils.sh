#!/usr/bin/env bash
#
# Script for installing main utility packages

set -euo pipefail


PACKAGES=(
  htop
  git-credential-oauth
  shellcheck
  bat
  zoxide
)

sudo apt-get install -y "${PACKAGES[@]}"

git credential-oauth configure

if ! command -v z >/dev/null 2>&1
then
  echo 'eval "$(zoxide init bash)"' >> ~/.bashrc
fi

source ~/.bashrc
