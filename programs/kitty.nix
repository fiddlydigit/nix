{ config, pkgs, lib, ... }:

{
  programs.kitty = {
    enable = true;
    theme = "Tomorrow Night";
    settings = {
      font_family = "jetbrains mono nerd font";
      font_size = 11;
      bold_font = "auto";
      italic_font = "auto";
      bold_italic_font = "auto";
      mouse_hide_wait = "2.0";
      cursor_shape = "block";
      url_color = "#0087bd";
      url_style = "dotted";
      confirm_os_window_close = 0; #Close the terminal without confirmation
      background_opacity = "1";
      # Windows
      hide_window_decorations = true;
      window_padding_width = 5;
      draw_minimal_borders = true;
      inactive_border_color = "#1d1f21";
      active_border_color = "#81a2be";
      # Tabs
      tab_bar_style = "fade";
      tab_fade = "1";
      active_tab_foreground = "#1d1f21";
      active_tab_background = "#81a2be";
      inactive_tab_foreground = "#81a2be";
      inactive_tab_background = "#1d1f21";
      tab_title_max_length = "14";
    };
    keybindings = {
      "ctrl+alt+enter" = "launch --cwd=current";
      "ctrl+shift+up" = "next_window";
      "ctrl+shift+down" = "previous_window";
    };
  };
}
