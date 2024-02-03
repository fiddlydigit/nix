{ pkgs, ... }:

let
  testmyass = pkgs.writeShellScriptBin "launch_alacritty.sh" builtins.readFile ../../scripts/launch_allacritty.sh;
in {
  home.packages = [testmyass];
}
