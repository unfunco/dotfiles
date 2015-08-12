autoload -U colors
autoload -Uz compinit

colors
compinit

tabs -2

setopt appendhistory autocd extendedglob nomatch notify promptsubst
unsetopt beep nomatch

zstyle :compinstall filename '~/.zshrc'

HISTFILE=~/.history
HISTSIZE=1024
SAVEHIST=8192

export CLICOLOR=1

[[ -f ~/.zshaliases ]] && source ~/.zshaliases
[[ -f ~/Ephemera/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source ~/Ephemera/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

git_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null)
  if [[ -n $ref ]]; then
    echo " git:(%{$fg_bold[green]%}${ref#refs/heads/}%{$reset_color%})"
  fi
}

expand_alias() {
  if [[ $LBUFFER =~ '[a-z0-9]+$' ]]; then
    zle _expand_alias
    zle expand-word
  fi

  zle self-insert
}
zle -N expand_alias

export PS1='${SSH_CONNECTION+"%{$fg_bold[green]%}%n@%m:"}%{$fg_bold[blue]%}%c%{$reset_color%}$(git_info) %(?.%{$fg_bold[green]%}λ.%{$fg_bold[red]%}λ)%{$reset_color%} '

bindkey " " expand_alias
bindkey -e

if which rbenv > /dev/null; then
  eval "$(rbenv init -)";
fi
