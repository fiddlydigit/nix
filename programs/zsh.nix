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
         { name = "TBSliver/zsh-plugin-tmux-simple"; }
        /* { name = "victoria-riley-barnett/Communism"; } */
      ];
    };
    };
  }
