{ pkgs, ... }:

let
  alacritty = pkgs.writeShellScriptBin "launch_alacritty.sh" builtins.readFile ../../scripts/nixGLIntel_alacritty.sh;
in {
  home.packages = [ alacritty ];
}
