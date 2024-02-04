{
  # Personal ssh
  enable = true;
  userName = "fiddlydigits";
  userEmail = "fiddlydigit@gmail.com";
  extraConfig = {
    core = { sshCommand = "ssh -i ~/.ssh/ssh_sasha"; };
  };

  # Work ssh
  includes = [
    {
      contents = {
        user = { email = "alexandr.baranovschi@coreflux.org"; };
        core = { sshCommand = "ssh -i ~/.ssh/sasha_work"; };
      };
      condition = "gitdir:~/Coreflux/";
    }
  ];
}

