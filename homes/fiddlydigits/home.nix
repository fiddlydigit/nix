{ config, self, pkgs, ... }:

let
in

{
  imports = [ 
    ../../programs
  ];
  home.file = import ../../programs/dotfiles.nix;
  home.sessionVariables = {
    EDITOR = "nvim";
    SHELL = "zsh";
  };
  home.username = "fiddlydigits";
  home.homeDirectory = "/home/fiddlydigits";
  home.stateVersion = "23.11";
  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    obsidian
    lazygit
    ranger
    xclip
    zip
    neofetch
    neovim
    unzip
    fzf
    ripgrep
    broot
    alacritty

    (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    nixgl
  ]; 
  
  programs = {
    
    # Let Home Manager install and manage itself.
    home-manager.enable = true;
    
    git = import ./git.nix;
  };
}
