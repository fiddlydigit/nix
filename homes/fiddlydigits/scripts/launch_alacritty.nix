{ pkgs, ... }:

(pkgs.writeShellScriptBin "launch_alacritty.sh" ''
  #!/usr/bin/env bash
  echo "works"
'')
