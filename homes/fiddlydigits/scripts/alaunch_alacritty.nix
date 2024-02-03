{ pkgs, ... }:

let
  ttt = builtins.readFile ./launch_alacritty.sh;
  testmyass = pkgs.writeShellScriptBin "launch_alacritty.sh" ttt;
in {
  home.packages = [testmyass];
}
