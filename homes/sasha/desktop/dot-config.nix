{ pkgs, ... }:

{
  home.file."./.config/" = {
    source = ./dotfiles/dot-config;
    recursive = true;
  };
}
