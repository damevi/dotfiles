set fish_greeting ""

fish_add_path /opt/homebrew/bin

# set -gx TERM xterm-256color
set -x DENO_INSTALL /Users/uciek/.deno
set -x PATH $DENO_INSTALL/bin:$PATH


# Generated for envman. Do not edit.
test -s ~/.config/envman/load.fish; and source ~/.config/envman/load.fish
