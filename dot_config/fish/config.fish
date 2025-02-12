/opt/homebrew/bin/brew shellenv | source
set fish_greeting ""

fish_add_path /opt/homebrew/bin
fish_add_path $HOME/go/bin

# set -gx TERM xterm-256color
set -x DENO_INSTALL /Users/uciek/.deno
set -x PATH $DENO_INSTALL/bin:$PATH


# Generated for envman. Do not edit.
test -s ~/.config/envman/load.fish; and source ~/.config/envman/load.fish

# Added by `rbenv init` on Tue Dec 17 14:56:40 CET 2024
status --is-interactive; and rbenv init - --no-rehash fish | source
