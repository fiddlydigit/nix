{ config, pkgs, lib, ... }:
{
  programs.flaemshot = {
    enable = true;
    settings = {
       General = {
          disabledTrayIcon = true;
          showStartupLaunchMessage = false;
        };
    };
  };
}
