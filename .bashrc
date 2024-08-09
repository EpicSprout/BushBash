#!/bin/bash

#
# ~/.bashrc
#

if [ -d ~/.config/bash ] && [ -f ~/.config/bash/aliases ]; then
    source ~/.config/bash/aliases
fi

if [ -d ~/.config/bash ] && [ -f ~/.config/bash/commands ]; then
    source ~/.config/bash/commands
fi

# If not running interactively, don't do anything:
[[ $- != *i* ]] && return

# Load the oh-my-posh prompt:
eval "$(oh-my-posh init bash --config /usr/share/oh-my-posh/themes/gruvbox.omp.json)"

# Default options:
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Expand the history size:
export HISTFILESIZE=10000
export HISTSIZE=500
export HISTTIMEFORMAT="%F %T" # add timestamp to history

# Remove duplicate lines and whitespace lines in the history:
export HISTCONTROL=erasedups:ignoredups:ignorespace