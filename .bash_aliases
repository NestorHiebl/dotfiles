# Filesystem / navigation
alias ls='ls --color=tty --group-directories-first'
alias ll='ls -hAlFv'
alias la='ls -hlFv'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias mkdir='mkdir -p'
alias :q='exit'

# Vim
alias vim='nvim'
alias vi='vim'
alias view='vi -R'

# Git
alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gp='git push'
alias gs='git status'

# Dotfile management
alias dot='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# Kitty aliases
alias icat='kitty +kitten icat'
