{ pkgs, ... }:
let
in
{
  home.file."./.config/nvim/" = {
    source = ./nvim;
    recursive = true;
  };
 
}
