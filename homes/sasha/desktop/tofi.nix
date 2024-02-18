{ pkgs, ... }:
{
  home.file."./.config/tofi/" = {
    source = ./dotfiles/tofi;
    recursive = true;
  };
 
}
