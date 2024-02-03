{ pkgs, ... }:

let
  testmyass = pkgs.writeShellScriptBin "launch_alacritty.sh" builtins.readFile ../../scripts/launch_alacritty.sh;
in {
  home.packages = [testmyass];
}
