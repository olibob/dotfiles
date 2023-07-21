## Fish config file
##################

# Remove fish greeting
set fish_greeting ""

# Aliases
#########
if type nvim >/dev/null 2>&1
    alias vim='nvim'
    alias vi='nvim'
    alias v='nvim'
end

# tmux
alias ta='tmux attach -t'
alias ts='tmux new-session -s'
alias tl='tmux list-sessions'
alias tksv='tmux kill-server'
alias tkss='tmux kill-session -t'

# Editor
set -gx VISUAL nvim
set -gx EDITOR $VISUAL

# Stuff
alias c='clear'
alias ls='lsd'
alias l='ls -1tr'
alias ll='ls -ltrh'
alias lt='ls --tree'
alias v="nvim"

# kubernetes
alias k="kubectl"

# zoxide
zoxide init fish | source

# user space npm global packages
set NPM_PACKAGES "$HOME/.npm-packages"
set PATH $PATH $NPM_PACKAGES/bin
set MANPATH $NPM_PACKAGES/share/man $MANPATH

# Auto start SSH agent if not started already
if test -z (pgrep ssh-agent)
    eval (ssh-agent -c)
    set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
    set -Ux SSH_AGENT_PID $SSH_AGENT_PID
    set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
end

# Go Path addition
set -gx GOPATH $HOME/go
set -gx PATH $PATH $GOPATH/bin

# Rust
set -gx PATH $PATH "$HOME/.cargo/bin"

# krew
set -gx PATH $PATH $HOME/.krew/bin

set -gx ZELLIJ_AUTO_ATTACH true

if set -q ZELLIJ
else
    zellij -s bob
end

atuin init fish | source

starship init fish | source
