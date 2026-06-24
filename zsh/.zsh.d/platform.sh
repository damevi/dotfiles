# --- OS Detection & Platform Specifics ---
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    alias ip="ipconfig getifaddr en0"
    notify() { osascript -e "display notification \"$1\" with title \"Terminal\"" }
else
    # Arch Linux / Generic Linux
    alias ip="hostname -I | awk '{print \$1}'"
    notify() { command -v notify-send >/dev/null && notify-send "$1" }
fi
