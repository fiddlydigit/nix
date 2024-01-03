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
    extraPackages = with pkgs; [
       ripgrep
       fd
       nil
       rustc
       cargo
       lua-language-server
    ];
    plugins = with pkgs.vimPlugins; [
      lazy-nix-helper-nvim
      lazy-nvim
    ];
  };
 
}
