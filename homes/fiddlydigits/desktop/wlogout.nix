{ pkgs, ... }:
{
  home.file."./.config/wlogout/" = {
    source = ./dotfiles/wlogout;
    recursive = true;
  };
 
}
