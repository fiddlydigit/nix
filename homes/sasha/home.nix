{ config, self, pkgs, ... }:

let
  user = "sasha";
in

{
  imports = [ 
    ../../packages
    ../script-builder.nix
    (import ../shortcuts.nix { inherit user; })
  ];
  home.file = import ../dotfiles.nix;
  home.sessionVariables = {
    EDITOR = "nvim";
  };
  home.username = "sasha";
  home.homeDirectory = "/home/sasha";
  home.stateVersion = "23.11"; # Please read the comment before changing.
  home.packages = with pkgs; [
     # General
    obsidian
    lazygit
    xclip 
    zip
    neofetch
    neovim
    unzip
    # File navigation
    ranger
    broot
    fzf
    ripgrep
    # Fonts
    (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    # GL fix, launch apps with script
    nixgl.nixGLIntel
  ]; 
  programs = {
    # Let Home Manager install and manage itself.
    home-manager.enable = true;
    
    git = import ./git.nix;
    bash = import ./bash.nix;
  };
}
