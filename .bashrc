#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTCONTROL=ignoreboth
export HISTFILESIZE=1000
export HISTIMEFORMAT="%a %h %d - %r"
export LESS='-R'
export LESSOPEN='|~/.lessfilter %s'

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.sock"

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# The OG
#PS1='[\u@\h \W]\$ '
PS1="\\$ \W\[$(tput sgr0)\] | "

if [ -e ~/.bashrc.aliases ] ; then
   source ~/.bashrc.aliases
fi

#eval $(thefuck --alias)
export QT_QPA_PLATFORMTHEME="qt5ct"

EDITOR=/usr/bin/vim
PDF=/usr/bin/zathura
VISUAL=vim; export VISUAL EDITOR=vim; export EDITOR
