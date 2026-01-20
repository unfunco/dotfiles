# SPDX-FileCopyrightText: 2026 Daniel Morris <daniel@honestempire.com>
# SPDX-License-Identifier: MIT

dotenv() {
  if [ -f .env ]; then
    export "$(sed '/^ *#/ d' .env)"
  else
    >&2 echo "Could not find a .env file."
    return 1
  fi
}
