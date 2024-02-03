{ user, ...}:
{
dconf.settings = {
  "org/gnome/settings-daemon/plugins/media-keys" = {
    custom-keybindings = [
      "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
    ];
  };
  "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
    binding = "<super>t";
    command = "/home/${user}/.nix-profile/bin/nixGLIntel_alacritty.sh";
    name = "open-alacritty";
  };
};
}

