show_window_current_format() {
  local number color background text fill current_window_format

  number="#I"
  color=$(get_tmux_option "@catppuccin_window_current_color" "$thm_prefix_or_noprefix")
  background=$(get_tmux_option "@catppuccin_window_current_background" "$thm_bg")
  text="$(get_tmux_option "@catppuccin_window_current_text" "#W")" # use #W for application instead of directory
  fill="$(get_tmux_option "@catppuccin_window_current_fill" "all")"                 # number, all, none

  current_window_format=$(build_window_format "$number" "$color" "$background" "$text" "$fill")

  echo "$current_window_format"
}
