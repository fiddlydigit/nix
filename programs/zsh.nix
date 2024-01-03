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
      # Cool aliases
      rebuild = "home-manager switch --flake /home/sasha/Nix";
      lagodigital = "ssh -i /home/fiddlydigits/.ssh/id_rsa_coreflux_digitalocean root@165.22.46.192";
    };
    zplug = {
      enable = true;
      plugins = [ 
        /* { name = "spaceship-prompt/spaceship-prompt"; tags = [ as:theme depth:1 ]; } */
        /* { name = "victoria-riley-barnett/Communism"; } */
      ];
    };
    };
  }
