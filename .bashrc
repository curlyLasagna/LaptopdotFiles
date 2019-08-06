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
export QT_QPA_PLATFORMTHEME="qt5ct"

#PS1='[\u@\h \W]\$ '# Default 
PS1='[\W]$ ' # Default 
#PS1="\\$ \W\[$(tput sgr0)\] "

if [ -e ~/.bashrc.aliases ] ; then
   source ~/.bashrc.aliases
fi

# Colorful Less
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

# Load pyenv  
export PATH="/home/luis/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Vi mode 
#set -o vi

export PATH
