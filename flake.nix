{
  description = "Home Manager configuration of sasha";

  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
        config.allowUnfreePredicate = (_: true);
        config.permittedInsecurePackages = [ "electron-25.9.0" ];
    };
    in {
      homeConfigurations = {
        "sasha" = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          
          modules = [ ./homes/sasha/home.nix ];

          # Optionally use extraSpecialArgs
          # to pass through arguments to home.nix
      };
      };
    };
}
