{ pkgs, ... }:

{
  home.file."./.config/" = {
    source = "./dotfiles/mimeapps";
    recursive = true;
  };
}
