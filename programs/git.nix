{
  programs.git = {

    # Personal ssh
    enable = true;
    userName = "fiddlydigits";
    userEmail = "fiddlydigit@gmail.com";

    extraConfig = {
      core = { sshCommand = "ssh -i ~/.ssh/ssh_msi"; };
    };

    # Work ssh
    includes = [
      {
        contents = {
          user = { email = "alexandr.baranovschi@coreflux.org"; };
          core = { sshCommand = "ssh -i ~/.ssh/id_ed25519_gitlab"; };
        };

        condition = "gitdir:~/Coreflux/";
      }
    ];
  };
}

