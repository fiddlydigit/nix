{
  enable = true;
  enableCompletion = true;
  profileExtra = builtins.readFile ./dotfiles/.profile;
  logoutExtra = builtins.readFile ./dotfiles/.logout;
  bashrcExtra = builtins.readFile ./dotfiles/.bashrc;
}

