# SPDX-FileCopyrightText: 2026 Daniel Morris <daniel@honestempire.com>
# SPDX-License-Identifier: MIT

setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_save_no_dups
setopt inc_append_history
setopt extended_history
setopt hist_expire_dups_first

export HISTSIZE=100000
export SAVEHIST="$HISTSIZE"

function _update_histfile() {
  local hist_dir="$HOME/.history/zsh/$(date +%Y/%m)"
  local hist_file="$hist_dir/$(date +%d)_${HOST%%.*}.txt"

  if [[ "$HISTFILE" != "$hist_file" ]]; then
    mkdir -p "$hist_dir"
    fc -W
    export HISTFILE="$hist_file"
    fc -R
  fi
}

autoload -Uz add-zsh-hook
add-zsh-hook precmd _update_histfile

_update_histfile
