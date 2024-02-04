export EDITOR=nvim

if [[ -f ~/.bash_aliases ]]; then
    . ~/.bash_aliases;
fi

# Only initiate pyenv if it is available on the system
if [[ -d "$HOME/.pyenv" ]]; then 
    export PYENV_ROOT="$HOME/.pyenv"
    command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init -)"
fi

# Remove linux mint X title bar
. /etc/os-release
if [[ $ID = "linuxmint" ]]; then
    type xdotool > /dev/null 2>&1 && {
        xprop -id $(xdotool getactivewindow) \
        -f _MOTIF_WM_HINTS 32c -set _MOTIF_WM_HINTS "0x2, 0x0, 0x2, 0x0, 0x0"
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
