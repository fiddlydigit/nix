{ config, self, pkgs, ... }:

let
  user = "sasha";
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
  home.username = "sasha";
  home.homeDirectory = "/home/sasha";
  home.stateVersion = "23.11";
  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    
    ##
    ## System & Desktop
    ##

    wlogout # -> Logout menu
    xdg-desktop-portal-hyprland # Let other applications communicate swiftly with the compositor
    pamixer # Sound control
    grim # Screenshot 
    slurp # Screenshot region
    wl-clipboard # Screenshot copy
    nwg-displays # Monitor setup
    wlr-randr # Monitor setup
    xfce.thunar # File explorer
    nwg-look # Customize look
    fluent-gtk-theme # theme
    swaybg # Sets the wallpaper
    tofi # App launcher
    brightnessctl # Brightness control

    ##
    ## CLI tools
    ##
    htop # Task manager
    zip
    neofetch
    unzip
    lazygit
    xclip 
    pavucontrol # Mixer GUI
    bluetuith # Bluetooth
    ranger # File navigation
    zoxide

    ##
    ## Work
    ##
    mqttui
    vscode
    neovim
    obsidian
    fzf
    ripgrep
    sqlite
    yarn

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
