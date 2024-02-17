
{ pkgs, ... }:
{
  home.file."./.config/swaylock/" = {
    source = ./dotfiles/swaylock;
    recursive = true;
  };
 
}
