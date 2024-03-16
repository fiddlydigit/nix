{ pkgs, ... }:
{
  home.file."./.config/mako/" = {
    source = ./mako;
    recursive = true;
  };
 
}
