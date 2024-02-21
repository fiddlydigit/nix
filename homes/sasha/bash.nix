{
  enable = true;
  profileExtra = builtins.readFile ./dotfiles/.profile;
  logoutExtra = builtins.readFile ./dotfiles/.bash_logout;
  bashrcExtra = builtins.readFile ./dotfiles/.bashrc;
  shellAliases = {
    # misc
    cp = "cp -i";
    mv = "mv -i";
    rm = "rm -i";
    ll = "ls -alF";
    la = "ls -A";
    l = "ls -CF";
    rebuild = "home-manager switch --flake /home/$(whoami)/Github/nix#$(whoami)";
    mqtt = "/home/$(whoami)/Apps/MQTTExplorer.AppImage";
    coreflux = "/home/$(whoami)/Apps/broker/CorefluxCentral";
    # ssh
    do-rita = "ssh -i ~/.ssh/sasha_d_ocean root@165.22.42.237";
    do-backend = "ssh -i ~/.ssh/sasha_d_ocean root@165.22.46.192";
    do-frontend = "ssh -i ~/.ssh/sasha_d_ocean root@138.197.105.237";
    do-downloads = "ssh -i ~/.ssh/sasha_d_ocean root@167.172.243.66";
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
}

