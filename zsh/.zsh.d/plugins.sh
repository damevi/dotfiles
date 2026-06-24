# Created by Zap Installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-users/zsh-syntax-highlighting"
plug "wintermi/zsh-brew"
plug "MichaelAquilina/zsh-you-should-use"
plug "zsh-users/zsh-history-substring-search"

autoload -Uz compinit
compinit

# Bind up/down (and ctrl-p/ctrl-n) to prefix-filtered history search:
# type "z", then up/down cycles only commands starting with "z"
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down

# --- Tool Initializations ---
command -v mise &> /dev/null && eval "$(mise activate zsh)"
command -v starship &> /dev/null && eval "$(starship init zsh)"
command -v zoxide &> /dev/null && eval "$(zoxide init zsh)"
command -v fzf &> /dev/null && source <(fzf --zsh)
