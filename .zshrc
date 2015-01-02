autoload -U colors
autoload -Uz compinit

colors
compinit

setopt appendhistory autocd extendedglob nomatch notify promptsubst
unsetopt beep nomatch

zstyle :compinstall filename '~/.zshrc'

HISTFILE=~/.history
HISTSIZE=1024
SAVEHIST=8192

export CLICOLOR=1

[[ -f ~/.zshaliases ]] && source ~/.zshaliases

git_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null)
  if [[ -n $ref ]]; then
    echo " git:(%{$fg_bold[green]%}${ref#refs/heads/}%{$reset_color%})"
  fi
}

export PS1='${SSH_CONNECTION+"%{$fg_bold[green]%}%n@%m:"}%{$fg_bold[blue]%}%c%{$reset_color%}$(git_info) %(?.%{$fg_bold[green]%}λ.%{$fg_bold[red]%}λ)%{$reset_color%} '

bindkey -v
bindkey "^F" vi-cmd-mode
bindkey jj vi-cmd-mode
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line
bindkey "^R" history-incremental-search-backward
bindkey "^P" history-search-backward
bindkey "^Y" accept-and-hold
bindkey "^N" insert-last-word
bindkey "^T" "^[I sudo ^[A"

if which rbenv > /dev/null; then
  eval "$(rbenv init -)";
fi

source ~/Ephemera/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
