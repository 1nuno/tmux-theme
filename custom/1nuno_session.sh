# This is the same as the default session module from catppuccin but I made the color green.

show_1nuno_session() {
  local index icon color text module

  index=$1
  icon=$(get_tmux_option "@catppuccin_1nuno_session_icon" "")
  color=$(get_tmux_option "@catppuccin_1nuno_session_color" "#{?client_prefix,"$GREENY","$BLACKY"}")
  text=$(get_tmux_option "@catppuccin_1nuno_session_text" "#[fg=#ffffff, bg=$BLACKY] #S")

  module=$(build_status_module "$index" "$icon" "$color" "$text")

  echo "$module"
}
