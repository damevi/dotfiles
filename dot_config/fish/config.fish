/opt/homebrew/bin/brew shellenv | source
set fish_greeting ""
alias n 'nvim'

fish_add_path /opt/homebrew/bin
fish_add_path $HOME/go/bin

# set -gx TERM xterm-256color

# Generated for envman. Do not edit.
test -s ~/.config/envman/load.fish; and source ~/.config/envman/load.fish

# Added by `rbenv init` on Tue Dec 17 14:56:40 CET 2024
status --is-interactive; and rbenv init - --no-rehash fish | source

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

