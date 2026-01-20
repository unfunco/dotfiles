# SPDX-FileCopyrightText: 2026 Daniel Morris <daniel@honestempire.com>
# SPDX-License-Identifier: MIT

g() {
  if [[ $# -gt 0 ]]; then
    git "$@"
  else
    git status
  fi
}
