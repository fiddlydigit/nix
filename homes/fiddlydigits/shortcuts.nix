{
dconf.settings = {
  "org/gnome/settings-daemon/plugins/media-keys" = {
    custom-keybindings = [
      "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
    ];
  };
  "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
    binding = "<super>t";
    command = "gnome-terminal nixGLIntel alacritty";
    name = "open-terminal";
  };
};
}

