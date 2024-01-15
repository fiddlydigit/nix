{ config, self, pkgs, ... }:

let
in

{
  imports = [ 
    ./programs
    ./gnome/shortcuts.nix
  ];
  home.file = import ./programs/dotfiles.nix;
  home.sessionVariables = {
    EDITOR = "nvim";
    SHELL = "/home/sasha/.nix-profile/bin/zsh";
  };
  home.username = "sasha";
  home.homeDirectory = "/home/sasha";
  home.stateVersion = "23.11"; # Please read the comment before changing.
  home.packages = with pkgs; [
    obsidian
    firefox
    jetbrains.rider
    lazygit
    ranger
    xclip
    zip
    lazygit
    neofetch
    unzip
    google-chrome
    distrobox
    nano
    tmux
    neovim
    dotnet-sdk_7
    (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
  ]; 
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
