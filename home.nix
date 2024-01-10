{ config, self, pkgs, ... }:

let
in

{
  imports = [ ./programs ];
  home.file = { };
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
    kitty
    unzip
    google-chrome
    distrobox
    nano
    tmux
    (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
  ]; 

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
