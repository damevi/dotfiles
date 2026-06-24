# --- Environment Variables ---
export PATH="$HOME/.local/bin:/usr/local/bin:$PATH"
export EDITOR="nvim"
export GIT_EDITOR="$EDITOR"
export SUDO_EDITOR="$EDITOR"
export HELIX_RUNTIME="$HOME/src/helix/runtime"

# GNU coreutils (ls, cat, etc.)
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
# GNU findutils (find, xargs, etc.)
export PATH="/opt/homebrew/opt/findutils/libexec/gnubin:$PATH"

# --- History settings ---
HISTFILE="$HOME/.cache/zsh/history"
HISTSIZE=50000
SAVEHIST=50000
setopt inc_append_history # write history as commands run, not just on exit
setopt share_history      # share history across concurrent sessions
setopt hist_ignore_dups   # don't record a line if it's a dupe of the previous one
setopt hist_ignore_space  # don't record lines starting with a space
setopt hist_expire_dups_first
