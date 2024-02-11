
{ pkgs, ... }:
{
  home.file."./.config/mako/" = {
    source = ./dotfiles/mako;
    recursive = true;
  };
 
}
