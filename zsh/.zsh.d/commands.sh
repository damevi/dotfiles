new_tmux () {
    # Ensure zoxide and fzf are working together
    local session_dir
    session_dir=$(zoxide query --list | fzf --height 40% --reverse)
    [ -z "$session_dir" ] && return # Exit if fzf is cancelled

    local session_name
    session_name=$(basename "$session_dir" | tr '.' '_') # tr cleans up dots for tmux names
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
