{ pkgs, ... }:
{
  home.file."./.config/nvim/" = {
    source = ./dotfiles/wofi;
    recursive = true;
  };
 
}
