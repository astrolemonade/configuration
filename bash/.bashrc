export EDITOR=nvim
export VISUAL="$EDITOR"
export CLICOLOR=1
export PS1='\u@\h:\[\e[33m\]\w\[\e[0m\]\$ '

export HISTSIZE=100000
export HISTFILESIZE=100000
shopt -s histappend
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

if [ -f ~/.aliases_work ]; then
    . ~/.aliases_work
fi

if [ -f ~/.env ]; then
    . ~/.env
fi

if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
