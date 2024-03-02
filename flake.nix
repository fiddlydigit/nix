{
  description = "Home Manager configuration";

  inputs = {
    # default
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixgl.url = "github:guibou/nixGL";
  };

  outputs = { nixpkgs, home-manager, nixgl, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
        config.allowUnfreePredicate = (_: true);
        config.permittedInsecurePackages = [ "electron-25.9.0" ];

        overlays = [ nixgl.overlay ];
    };
    in {
      homeConfigurations = {
        "sasha" = home-manager.lib.homeManagerConfiguration {
          
          inherit pkgs;
          modules = [ ./homes/sasha/home.nix ];

          # Optionally use extraSpecialArgs
          # to pass through arguments to home.nix
        };
        "fiddlydigits" = home-manager.lib.homeManagerConfiguration {
          
          inherit pkgs;
          modules = [ ./homes/rossi/home.nix ];

          # Optionally use extraSpecialArgs
          # to pass through arguments to home.nix
        };
      };
    };
}
