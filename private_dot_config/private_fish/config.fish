## Fish config file
##################

# Remove fish greeting
set fish_greeting ""

# Set dircolors
# https://awesomeopensource.com/project/trapd00r/LS_COLORS
# eval ( gdircolors --c-shell $HOME/.dircolors)

# Colored man pages
#set -Ux PAGER "most -s"

# Aliases
#########
if type nvim > /dev/null 2>&1
 alias vim='nvim'
 alias vi='nvim'
end

# tmux
alias ta='tmux attach -t'
alias ts='tmux new-session -s'
alias tl='tmux list-sessions'
alias tksv='tmux kill-server'
alias tkss='tmux kill-session -t'

# Editor
set -Ux VISUAL nvim
set -Ux EDITOR $VISUAL

# Stuff
alias c='clear'
alias ls='lsd'
alias l='ls -1tr'
alias ll='ls -ltrh'

# zoxide
zoxide init fish | source

# Git
alias gs='git status'
alias gss='git status -s'

## Global Vars
##############

# golang path
set PATH $PATH /usr/local/go/bin
set GOPATH $HOME/go
set GOBIN $HOME/go/bin
# Add go GOPATH/bin to the path
set PATH $PATH $GOPATH/bin

#yarn bin path
#set PATH $PATH $HOME/.yarn/bin

# Set gruvbox theme
# https://github.com/Jomik/fish-gruvbox
# theme_gruvbox dark soft

# Starship activation
# https://starship.rs/

starship init fish | source
