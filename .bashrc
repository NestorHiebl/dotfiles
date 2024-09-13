export EDITOR=nvim

if [[ -f ~/.bash_aliases ]]; then
    . ~/.bash_aliases;
fi

PS1="\e[0;34m \w ; \e[0m"

# Only initiate pyenv if it is available on the system
if [[ -d "$HOME/.pyenv" ]]; then
    export PYENV_ROOT="$HOME/.pyenv"
    command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init -)"
fi

# Check if neovim is installed under /opt; if so, add it to PATH
NVIM_INSTALL_DIR="/opt/nvim-linux64/bin"
if [[ -d $NVIM_INSTALL_DIR ]]; then
    export PATH="$PATH:$NVIM_INSTALL_DIR"
fi

MANPATH="$MANPATH:/usr/local/texlive/2023/texmf-dist/doc/man"
PATH="$PATH:/usr/local/texlive/2023/bin/x86_64-linux"

# Remove linux mint X title bar
. /etc/os-release
if [[ $ID = "linuxmint" ]]; then
    type xdotool > /dev/null 2>&1 && {
        xprop -id $(xdotool getactivewindow) \
        -f _MOTIF_WM_HINTS 32c -set _MOTIF_WM_HINTS "0x2, 0x0, 0x2, 0x0, 0x0"
    } || {
        echo "Don't like that title bar? Install xdotool to make it go away"
    }
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
    builtin cd "$newdir"
}

# Initialize GHC environment
[[ -f "$HOME/.ghcup/env" ]] && . "$HOME/.ghcup/env"

