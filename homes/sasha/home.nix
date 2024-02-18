{ config, self, pkgs, ... }:

let
  user = "sasha";
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
  home.username = "sasha";
  home.homeDirectory = "/home/sasha";
  home.stateVersion = "23.11";
  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    ## System & Desktop
    ## pulseaudio
    ## bluez
    ## bluez-utils
    # hyprland # Window manager
    # wlogout # Logout menu
    # waylock # Lock screen
    xdg-desktop-portal-hyprland # Lets other applications communicate swiftly with the compositor
    pamixer # Sound control
    waybar # Status bar
    grim # Screenshot 
    slurp # Screenshot region
    wl-clipboard # Screenshot copy
    nwg-displays # Monitor setup
    wlr-randr # Monitor setup
    xfce.thunar # File explorer
    xfce.xfce4-settings 
    # Themes and theme setup
    nwg-look # Customize look
    juno-theme # Theme
    swaybg # Sets the wallpaper
    
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
    obsidian
    lazygit
    neofetch
    neovim
    fzf
    ripgrep
    mqttui
    firefox
    
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
