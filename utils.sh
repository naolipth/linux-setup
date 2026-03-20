#!/usr/bin/env bash
#
# Script for installing main utility packages

set -euo pipefail


PACKAGES=(
  htop
  git-credential-oauth
  shellcheck
)

sudo apt-get install -y "${PACKAGES[@]}"

