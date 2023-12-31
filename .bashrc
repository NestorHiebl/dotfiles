# Sample .bashrc for SUSE Linux
# Copyright (c) SUSE Software Solutions Germany GmbH

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.
export EDITOR=nvim

if [[ -f ~/.bash_aliases ]]; then
    . ~/.bash_aliases;
fi

# Only initiate pyenv if it is available on the system
if type pyenv &> /dev/null; then 
    export PYENV_ROOT="$HOME/.pyenv"
    command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init -)"
fi

# Make directory and enter it in one command
function mcd {
    local newdir='mcd_failed'
    if [[ -d "$1" ]]; then
        echo "directory $1 already exists"
        newdir="$1"
    else
        if [[ -n "$2" ]]; then
            # Mode has been specified
            command mkdir -p -m $1 "$2" && newdir="$2"
        else
            command mkdir -p "$1" && newdir="$1"
        fi
    fi
    builtin cd "newdir"
}
