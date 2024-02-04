{ config, self, pkgs, ... }:

let
  user = "fiddlydigits";
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
  home.username = "fiddlydigits";
  home.homeDirectory = "/home/fiddlydigits";
  home.stateVersion = "23.11";
  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    obsidian
    lazygit
    ranger # Files
    broot # Files
    xclip 
    zip
    neofetch
    neovim
    unzip
    fzf # Search
    ripgrep # Search

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
