{ config, self, pkgs, ... }:

let
  user = "fiddlydigits";
in

{
  imports = [ 
    ./desktop
    ../../home-services
    ../../home-packages
    ../../home-dotfiles
    ../script-builder.nix
  ];
  home.sessionVariables = {
    EDITOR = "nvim";
  };
  home.username = "fiddlydigits";
  home.homeDirectory = "/home/fiddlydigits";
  home.stateVersion = "23.11";
  #fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    
    ##
    ## System & Desktop
    ##

    ## pulseaudio -> Audio driver
    ## bluez -> Bluetooth driver
    ## bluez-utils -> Bluetooth
    ## bluedevil
    ## waybar # Status bar
    ## hyprland -> Window manager
    ## swaylock-effects -> Lock screen
    wlogout # -> Logout menu
    xdg-desktop-portal-hyprland # Let other applications communicate swiftly with the compositor
    pamixer # Sound control
    grim # Screenshot 
    slurp # Screenshot region
    wl-clipboard # Screenshot copy
    nwg-displays # Monitor setup
    wlr-randr # Monitor setup
    xfce.thunar # File explorer
    xfce.xfce4-settings 
    nwg-look # Customize look
    juno-theme # Theme
    swaybg # Sets the wallpaper
    tofi # App launcher
    brightnessctl # Brightness control

    ##
    ## CLI tools
    ##
    htop # Task manager
    zip
    neovim
    neofetch
    unzip
    lazygit
    xclip 
    mqttui
    pavucontrol # Mixer GUI
    bluetuith # Bluetooth
    ranger # File navigation
    twingate # Remote access to work
    helix
    
    ##
    ## General
    ##
    git
    vscode
    obsidian
    fzf
    ripgrep
    sqlite
    netcoredbg

    ##
    ## Fixes & Misc
    ##
    (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    nixgl.nixGLIntel # GL fix
  ]; 
  
  ## User specific
  programs = {
    # Let Home Manager install and manage itself.
    home-manager.enable = true;
    
    git = import ./git.nix;
    bash = import ./bash.nix;
  };
}
