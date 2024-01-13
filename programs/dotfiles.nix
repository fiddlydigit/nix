{
  ".config/ranger/rcss.conf" = import ./test.nix;
  ".config/ranger/rc.conf" = import ./dotfiles/ranger_rc.nix;
  ".config/ranger/rifle.conf" =
  {
      text = ''
        else = nvim "$1"
        label editor = "$EDITOR" -- "$@"
        label pager  = "$PAGER" -- "$@"
      '';
  };
  ".config/kitty/kitty.conf" = {
      text = ''
        
	# BEGIN_KITTY_THEME
	# Tomorrow Night
        include current-theme.conf
	# END_KITTY_THEME
        shell_integration no-rc enabled
	active_border_color #81a2be
	active_tab_background #81a2be
	active_tab_foreground #1d1f21
	background_opacity 1
	bold_font auto
	bold_italic_font auto
	confirm_os_window_close 0
	cursor_shape block
	draw_minimal_borders yes
	font_family jetbrains mono nerd font
	font_size 11
	hide_window_decorations yes
	inactive_border_color #1d1f21
	inactive_tab_background #1d1f21
	inactive_tab_foreground #81a2be
	italic_font auto
	mouse_hide_wait 2.0
	tab_bar_style fade
	tab_fade 1
	tab_title_max_length 14
	url_color #0087bd
	url_style dotted
	window_padding_width 5
	
	map ctrl+alt+enter launch --cwd=current
	map ctrl+shift+down previous_window
	map ctrl+shift+up next_window
      '';
  };
  ".config/kitty/current-theme.conf" = {
      text = ''
        background #1d1f21
	foreground #c4c8c5
	cursor #c4c8c5
	selection_background #363a41
	color0 #000000
	color8 #000000
	color1 #cc6666
	color9 #cc6666
	color2 #b5bd68
	color10 #b5bd68
	color3 #f0c574
	color11 #f0c574
	color4 #80a1bd
	color12 #80a1bd
	color5 #b294ba
	color13 #b294ba
	color6 #8abdb6
	color14 #8abdb6
	color7 #fffefe
	color15 #fffefe
	selection_foreground #1d1f21
      '';
  };

}
