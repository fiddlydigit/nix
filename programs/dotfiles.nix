{
  ".config/ranger/rc.conf" = {
    text = ''
      map S shell $SHELL -c "cd %d ; zsh"
    '';
  };
  ".config/ranger/rifle.conf" =
  {
      text = ''
        else = nvim "$1"
        label editor = "$EDITOR" -- "$@"
        label pager  = "$PAGER" -- "$@"
  '';
  };
}
