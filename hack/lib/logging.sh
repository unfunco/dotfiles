#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

_timestamp() {
  date '+%l:%M%p' | sed 's/^ //' | tr '[:lower:]' '[:upper:]' | sed 's/\.//g'
}

dotfiles::log::error() {
  local timestamp
  timestamp="$(_timestamp)"
  for message; do
    >&2 printf '%s \033[1;38;5;204mERROR\033[0m %s\n' "$timestamp" "$message"
  done
}

dotfiles::log::warning() {
  local timestamp
  timestamp="$(_timestamp)"
  for message; do
    >&2 printf '%s \033[1;38;5;192mWARN\033[0m %s\n' "$timestamp" "$message"
  done
}

dotfiles::log::info() {
  local timestamp
  timestamp="$(_timestamp)"
  for message; do
    printf '%s \033[1;38;5;86mINFO\033[0m %s\n' "$timestamp" "$message"
  done
}

dotfiles::log::debug() {
  local timestamp
  timestamp="$(_timestamp)"
  for message; do
    >&2 printf '%s \033[1;38;5;204mDEBUG\033[0m %s\n' "$timestamp" "$message"
  done
}
