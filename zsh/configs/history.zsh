# SPDX-FileCopyrightText: 2026 Daniel Morris <daniel@honestempire.com>
# SPDX-License-Identifier: MIT

setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_save_no_dups
setopt inc_append_history
setopt extended_history
setopt hist_expire_dups_first

HIST_DIR="$HOME/.history/zsh/$(date +%Y/%m)"
mkdir -p "$HIST_DIR"

export HISTFILE="$HIST_DIR/$(date +%d)_${HOST%%.*}.txt"
export HISTSIZE=100000
export SAVEHIST="$HISTSIZE"
