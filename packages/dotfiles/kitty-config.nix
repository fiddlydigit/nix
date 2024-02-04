{
  text = ''
    shell /home/sasha/.nix-profile/bin/zsh
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
    background_opacity 1.0

    map ctrl+alt+enter launch --cwd=current
    map ctrl+shift+down previous_window
    map ctrl+shift+up next_window
  '';
}
