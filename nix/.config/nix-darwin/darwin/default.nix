{ lib, inputs, nixpkgs, home-manager, darwin, user, ... }:

let
  system = "aarch64-darwin"; # System architecture
in
{
  cupskrrtt = darwin.lib.darwinSystem {
    # MacBookAir M1 Local host name
    inherit system;
    specialArgs = { inherit user inputs; };
    modules = [
      # Modules that are used
      ./configuration.nix

      home-manager.darwinModules.home-manager
      {
        # Home-Manager module that is used
        home-manager.useGlobalPkgs = true;
        home-manager.useUserPackages = true;
        home-manager.extraSpecialArgs = { inherit user; }; # Pass flake variable
        home-manager.users.${user} = import ./home.nix;
      }
    ];
  };
}
