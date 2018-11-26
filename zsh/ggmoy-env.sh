#!/bin/zsh

# Add commonly used folders to $PATH
#export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Specify default editor. Possible values: vim, nano, ed etc.
export EDITOR=vim

# History configuration
HISTSIZE=1000000
SAVEHIST=1000000
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.

# File search functions
#function f() { find . -iname "*$1*" ${@:2} }
#function r() { grep "$1" ${@:2} -R . }

# Create a folder and move into it in one command
#function mkcd() { mkdir -p "$@" && cd "$_"; }

# Example aliases
#alias cppcompile='c++ -std=c++11 -stdlib=libc++'
#alias git='g'

# The following line fix TMUX sintax Highlighting problems
export TERM="xterm-256color"

if [[ "$(uname)" == "Darwin" ]]
then
    export PATH=$PATH:$HOME/Library/Python/2.7/bin
    export PATH=$PATH:$HOME/Documents/HashiCorp/Terraform/bin

    # Start ssh-agent
    if [ ! -e /tmp/.ssh-agent ]
    then
        ssh-agent > /tmp/.ssh-agent
    fi
    source /tmp/.ssh-agent
    
    export ANSIBLE_CONFIG=$HOME/ansible/ansible.cfg
    #export ANSIBLE_INVENTORY=$HOME/ansible/hosts
fi
