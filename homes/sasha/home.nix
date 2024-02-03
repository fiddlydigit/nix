{ config, self, pkgs, ... }:

let
in

{
  imports = [ 
    ../../programs
    ../../gnome/shortcuts.nix
  ];
  home.file = import ../../programs/dotfiles.nix;
  home.sessionVariables = {
    EDITOR = "nvim";
    SHELL = "zsh";
  };
  home.username = "sasha";
  home.homeDirectory = "/home/sasha";
  home.stateVersion = "23.11"; # Please read the comment before changing.
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
    (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
  ]; 
  programs = {
  
    # Let Home Manager install and manage itself.
    home-manager.enable = true;
    
    git = import ./git.nix;
  };
}
