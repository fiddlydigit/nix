{
 programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    shellAliases = {
      # misc
      cp = "cp -i";
      mv = "mv -i";
      rm = "rm -i";
      rebuild = "home-manager switch --flake /home/sasha/Github/nix#$(whoami)";
      # git
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
    initExtra = ''
      export PATH="$HOME/.local/kitty.app/bin:$PATH"
      eval "$(starship init zsh)"
    '';
    envExtra = ''
      . "$HOME/.cargo/env"
    '';
    zplug = {
      enable = true;
      plugins = [ 
        /* { name = "spaceship-prompt/spaceship-prompt"; tags = [ as:theme depth:1 ]; } */
        /* { name = "victoria-riley-barnett/Communism"; } */
        { name = "MenkeTechnologies/zsh-dotnet-completion"; }
      ];
    };
    };
  }
