if command -v tmux &>/dev/null && [ -z "$TMUX" ]; then
  tmux attach || tmux new-session -s main
fi
