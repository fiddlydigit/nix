{ config, self, pkgs, ... }:

let
  user = "fiddlydigits";
in

{
  imports = [ 
    ./desktop
    ../../services
    ../../packages
    ../script-builder.nix
 #   (import ../shortcuts.nix { inherit user; })
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
    ## Install with package manager
    # waybar # Status bar
    # hypr # Window manager
    # wlogout # Logout menu
    # waylock # Lock screen
    
    ## System
    htop # Task manager
    zip
    unzip
    xclip 
    pavucontrol # Mixer GUI
    bluetuith # Bluetooth
    wofi # App launcher
    ranger # File navigation
    broot # File navigation
    
    ## General
    qutebrowser
    obsidian
    lazygit
    neofetch
    neovim
    fzf
    ripgrep
    mqttui
    
    # Fonts
    (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    
    # GL fix, launch apps with script
    nixgl.nixGLIntel
  ]; 
  
  ## User specific
  programs = {
    # Let Home Manager install and manage itself.
    home-manager.enable = true;
    
    git = import ./git.nix;
    bash = import ./bash.nix;
  };
}
