{ pkgs, ... }:
{
  home.file."./.config/wofi/" = {
    source = ./dotfiles/wofi;
    recursive = true;
  };
 
}
