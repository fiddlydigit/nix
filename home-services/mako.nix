
{ pkgs, ... }:
{
  services.mako = {
    enable = true;
    extraConfig = builtins.readFile ./dotfiles/mako/config;
  };
}
