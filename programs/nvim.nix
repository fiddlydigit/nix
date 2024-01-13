{ pkgs, ... }:
let
in
{
  home.packages = with pkgs; [
    
  ]; 
  home.file."./.config/nvim/" = {
    source = ./nvim;
    recursive = true;
  };
  programs.neovim = {
    enable = true;
    vimAlias = true;
    coc.enable = false;
  };
 
}
