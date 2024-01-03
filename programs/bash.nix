{
  programs.bash = {
    enable = true;
    shellAliases = {
      rebuild = "sudo nixos-rebuild switch --flake /home/fiddlydigits/Github/nix-config#fiddlydigits";
      homeconfig = "nvim /home/fiddlydigits/Github/nix-config/hosts/fiddlydigits/home.nix";
      systemconfig = "nvim /home/fiddlydigits/Github/nix-config/hosts/fiddlydigits/configuration.nix";
      sharpshell = "nix-shell /home/fiddlydigits/Github/nix-config/shells/dotnet7.nix";
      nviminit = "nvim /home/fiddlydigits/.config/nvim/init.lua";
      mqtttools = "appimage-run /home/fiddlydigits/MQTT_Tools/MQTT-Explorer-0.4.0-beta1.AppImage";
      lagodigital = "ssh -i /home/fiddlydigits/.ssh/id_rsa_coreflux_digitalocean root@161.35.134.176";
    };

    initExtra = 
    ''
    PS1=' \[\e[38;5;77m\]➜ \[\e[38;5;228;1m\]$(git branch 2>/dev/null | grep '"'"'"'"'"'"'"'"' ^* '"'"'"'"'"'"'"'"' | colrm 1 2) \[\e[38;5;75m\]\w \[\e[38;5;77m\]\$\[\e[0m\]'

    '';


  };
}
