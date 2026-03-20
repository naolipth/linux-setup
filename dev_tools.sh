#!/usr/bin/env bash
#
# Installing development tools

set -euo pipefail

if ! command -v uv >/dev/null 2>&1
then
  echo "Installing uv..."
  curl -LsSf https://astral.sh/uv/install.sh | sh
  echo 'eval "$(uv generate-shell-completion bash)"' >> ~/.bashrc
  echo 'eval "$(uvx --generate-shell-completion bash)"' >> ~/.bashrc

  source "$HOME"/.local/bin/env bash

  uv python install
fi

if ! command -v julia >/dev/null 2>&1
then
  echo "Installing Julia..."
  curl -fsSL https://install.julialang.org | sh
  source "$HOME"/.bashrc
fi
