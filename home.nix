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
    foot
    alacritty
    (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
  ]; 
  
xdg = {
  enable = true;
  desktopEntries = {
    "terminal-tmux" = {
      name = "Terminal with Tmux";
      exec = "foot -e \"zsh -c 'tmux'\"";
      icon = "utilities-terminal";
      #categories = "Utility;TerminalEmulator;";
    };
  };
}; 

  dconf.settings = {
   "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
        name = "terminal";
        command = "zsh";
        binding = "<Super>t";
      };
 };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
