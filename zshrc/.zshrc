# --- 1. Environment Variables ---
export PATH="$HOME/.local/bin:/usr/local/bin:$PATH"
export EDITOR="nvim"
export SUDO_EDITOR="$EDITOR"
export HELIX_RUNTIME="$HOME/src/helix/runtime"

# History settings
HISTFILE=~/.history
HISTSIZE=10000
SAVEHIST=50000
setopt inc_append_history

# --- 2. OS Detection & Platform Specifics ---
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    alias ip="ipconfig getifaddr en0"
    notify() { osascript -e "display notification \"$1\" with title \"Terminal\"" }
else
    # Arch Linux / Generic Linux
    alias ip="hostname -I | awk '{print \$1}'"
    notify() { command -v notify-send >/dev/null && notify-send "$1" }
fi

# --- 3. Plugin & Tool Initializations ---
# Initialize Mise (handles tool versions like node, python, etc.)
if command -v mise &> /dev/null; then
    eval "$(mise activate zsh)"
fi

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
source <(fzf --zsh)

# --- 4. Aliases ---
alias n="nvim"
alias g="git"
alias ga='git add . && git commit -m'
alias gh="git push origin head"
alias tm=new_tmux

# --- 5. Functions ---
new_tmux () {
    # Ensure zoxide and fzf are working together
    local session_dir=$(zoxide query --list | fzf --height 40% --reverse)
    [ -z "$session_dir" ] && return # Exit if fzf is cancelled

    local session_name=$(basename "$session_dir" | tr '.' '_') # tr cleans up dots for tmux names
    local notification=""

    if tmux has-session -t "$session_name" 2>/dev/null; then
        if [ -n "$TMUX" ]; then
            tmux switch-client -t "$session_name"
        else
            tmux attach -t "$session_name"
        fi
        notification="Attached to $session_name"
    else
        if [ -n "$TMUX" ]; then
            tmux new-session -d -c "$session_dir" -s "$session_name"
            tmux switch-client -t "$session_name"
            notification="New session created: $session_name"
        else
            tmux new-session -c "$session_dir" -s "$session_name"
            notification="New session created: $session_name"
        fi
    fi

    # Use the cross-platform notify function
    notify "$notification"
}
