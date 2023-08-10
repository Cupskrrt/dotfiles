{
  description = "Cup nix config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.05"; # Default Stable Nix Packages
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable"; # Unstable Nix Packages

    #home manager
    home-manager.url = "github:nix-community/home-manager/release-23.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    #darwin
    darwin.url = "github:LnL7/nix-darwin";
    darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, darwin, nixpkgs-unstable, nixpkgs, home-manager, ... }:
    let
      user = "cupskrrtt";
      location = "$HOME/.setup";
    in
    {
      darwinConfigurations = (
        import ./darwin {
          inherit (nixpkgs) lib;
          inherit inputs nixpkgs nixpkgs-unstable home-manager darwin user;
        }
      );
    };
}
