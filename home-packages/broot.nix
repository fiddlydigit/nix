{ config, pkgs, lib, ... }:
{
  programs.broot = {
    enable = true;
    enableBashIntegration = true;
    settings = {
      modal = true;

    };
  };
}

