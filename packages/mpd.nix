
{ config, pkgs, lib, ... }:
{
  programs.mpd = {
    enable = true;
    musicDirectory = ''
    '';
  };
}
