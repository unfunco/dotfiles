#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

# Short-circuit if init.sh has already been sourced.
[[ $(type -t dotfiles::init::loaded) == function ]] && return 0

DOTFILES=$(realpath "$(dirname "${BASH_SOURCE[0]}")/../..")

source "$DOTFILES/hack/lib/logging.sh"

# Marker function to indicate init.sh has been fully sourced.
dotfiles::init::loaded() {
  return 0
}
