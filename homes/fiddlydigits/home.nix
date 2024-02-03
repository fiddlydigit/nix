{ config, self, pkgs, ... }:

let
in

{
  imports = [ 
    ../../programs
    ./shortcuts.nix
    ./script/launch_alacritty.nix
  ];
  home.file = import ./dotfiles.nix;
  home.sessionVariables = {
    EDITOR = "nvim";
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
    nixgl.nixGLIntel
    
    # (writeShellScriptBin "launch_alacritty.sh" ''
    # #!/usr/bin/env bash
    # echo "works"
    # '')
  ]; 
  
  programs = {
    
    # Let Home Manager install and manage itself.
    home-manager.enable = true;
    
    git = import ./git.nix;
  };
}
