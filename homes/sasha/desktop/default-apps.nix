{ pkgs, ... }:

{
  home.file."./.config/" = {
    source = "./dotfiles/mimeapps.list";
    recursive = true;
  };
}
