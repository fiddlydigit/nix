{ config, self, pkgs, ... }:

let
in

{
  imports = [ ./programs ];
  home.file = import ./programs/dotfiles.nix;
  home.sessionVariables = {
    EDITOR = "nvim";
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
    foot
    neovim
    (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
  ]; 

  dconf.settings = {
   "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
        name = "terminal";
        command = "kitty";
        binding = "<Super>t";
      };
 };

  home.shellAliases = {
    g = "git";
    lg = "lazygit";
    # add
    ga = "git add";
    gaa = "git add *";
    # commit
    gc = "git commit";
    gcm = "git commit -m";
    gca = "git commit -am";
    # pull/push
    gpl = "git pull";
    gps = "git push";
    gs = "git status";
    gd = "git diff";
    gch = "git checkout";
    gnb = "git checkout -b";
    gac = "git add . && git commit";
    grs = "git restore --staged .";
    gre = "git restore";
    gr = "git remote";
    gcl = "git clone";
    gt = "git ls-tree -r master --name-only";
    gb = "git branch";
    gbl = "git branch --list";
    gm = "git merge";
    gf = "git fetch";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
