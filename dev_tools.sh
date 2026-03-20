#!/usr/bin/env bash
#
# Installing development tools

set -euo pipefail


curl -LsSf https://astral.sh/uv/install.sh | sh
echo 'eval "$(uv generate-shell-completion bash)"' >> ~/.bashrc
echo 'eval "$(uvx --generate-shell-completion bash)"' >> ~/.bashrc

source "$HOME"/.local/bin/env bash

uv python install




