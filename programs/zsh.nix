{ config, pkgs, lib, ... }:
{
 programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    shellAliases = {
      grep = "grep --color=auto";
      cp = "cp -i";
      mv = "mv -i";
      rm = "rm -i";
      g = "git";
      gs = "git status";
    };
    zplug = {
      enable = false;
      plugins = [ 
        /* { name = "victoria-riley-barnett/Communism"; } */
      ];
    };
    };
  }
