show_pane_default_format() {
  local number color background text fill

  number="#{pane_index}"
  color="$(get_tmux_option "@catppuccin_pane_color" "$thm_active_or_noactive")"
  background="$(get_tmux_option "@catppuccin_pane_background_color" "$thm_bg")"
  text="$(get_tmux_option "@catppuccin_pane_default_text" "#{b:pane_current_path}")"
  fill="$(get_tmux_option "@catppuccin_pane_default_fill" "all")" # number, all, none

  default_pane_format=$(build_pane_format "$number" "$color" "$background" "$text" "$fill")

  echo "$default_pane_format"
}
