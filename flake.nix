{
  description = "My NixOS System Configuration Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    # nixpkgs.url = "github:nixos/nixpkgs/nixos-23.05";
  };

  outputs = { self, nixpkgs }:
    let 
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config = {
          allowUnfree = true;
        };
      };
    in
    {
      nixosConfigurations = {
        Terra = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit system; };
          modules = [
            ./hosts/terra/configuration.nix
          ];
        };
      };
    };
}
