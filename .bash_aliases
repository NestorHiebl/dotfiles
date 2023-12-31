# Filesystem / navigation
alias ll='ls -hAlFv --group-directories-first'
alias la='ls -hlFv --group-directories-first'
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
