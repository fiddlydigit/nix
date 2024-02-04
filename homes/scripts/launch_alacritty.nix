{ pkgs, lib, ... }:

let

  scriptsDir = ../../scripts;
  isShellScript = name: type: type == "regular" && builtins.match ".*\\.sh$" name != null; # filter
  shellScripts = (lib.attrsets.filterAttrs isShellScript) (builtins.readDir scriptsDir); # attribute set

  # Create a script that can be run by its name
  makeScript = scriptName:
    let
      scriptPath = scriptsDir + "/${scriptName}";
      scriptContent = builtins.readFile scriptPath;
    in
    pkgs.writeShellScriptBin scriptName scriptContent;
  
  # Create a list of scripts
  scriptPackages = lib.mapAttrsToList # pckgs function
                   (name: script: makeScript name) # arg1(function) function defined above
                   shellScripts; # arg2(attribute set) all .sh files in directory

in {
  home.packages = scriptPackages;
}

