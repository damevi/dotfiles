# Source .sh files in .zsh.d, in a defined order so dependencies
# (e.g. platform.sh's notify() before commands.sh uses it) load correctly.
typeset -a zsh_d_order=(env platform plugins aliases commands completions prompt)
 
for name in "${zsh_d_order[@]}"; do
  config_file="$HOME/.zsh.d/${name}.sh"
  [ -r "$config_file" ] && source "$config_file"
done

