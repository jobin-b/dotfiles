#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='\[\e[1;36m\]\u@\[\e[1;34m\]\h \[\e[1;35m\]\w\[\e[0m\]\$ '
source  /home/jobin/.bash_aliases
fastfetch

eval "$(_PIPENV_COMPLETE=bash_source pipenv)"
