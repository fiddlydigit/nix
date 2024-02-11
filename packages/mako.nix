
{ pkgs, ... }:
{
  # home.file."./.config/mako/" = {
  #   source = ./dotfiles/mako;
  #   recursive = true;
  # };

  services.mako = {
    enable = true;
    extraConfig = builtins.readFile ./dotfiles/mako/config;
  };
 
}
