export TERM=xterm-256color
export EDITOR=vim
export VISUAL="$EDITOR"
export CLICOLOR=1
export PROMPT="%n@%m:%B%F{green}%~%f%b$ "
export LSCOLORS=cxgxfxexbxegedabagacad

export HISTSIZE=100000
export SAVEHIST=100000
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_ALL_DUPS

bindkey -e

test -f ~/.aliases && source ~/.aliases

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH" && eval "$(pyenv init -)"

eval "$(fzf --zsh)"
