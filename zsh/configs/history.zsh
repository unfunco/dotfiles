# SPDX-FileCopyrightText: 2026 Daniel Morris <daniel@honestempire.com>
# SPDX-License-Identifier: MIT

setopt hist_ignore_all_dups inc_append_history

HIST_DIR="$HOME/.history/zsh/$(date +%Y/%m)"
mkdir -p "$HIST_DIR"

HISTFILE="$HIST_DIR/$(date +%d).txt"
HISTSIZE=100000
SAVEHIST=100000
