{ pkgs, ... }:

let
  testmyass = pkgs.writeShellScriptBin "launch_alacritty.sh" builtins.readFile ./launch_alacritty.sh;
in {
  home.packages = [testmyass];
}
