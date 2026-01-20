{
  description = "Config i stole from amper youtube video ehehe";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim/nixos-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, nixvim, ... }@inputs:
  let
    system = "x86_64-linux";
    homeStateVersion = "25.11";
    user = "spade";

    hosts = [
      { hostname = "spade"; stateVersion = "25.11"; }
    ];

    makeSystem = { hostname, stateVersion }:
      nixpkgs.lib.nixosSystem {
        inherit system;

        specialArgs = {
          inherit inputs stateVersion hostname user;
        };


        modules = [
          
	  ({ config, pkgs, ... }: {
      	  nixpkgs.config.allowUnfree = true;
    	  }) 

	  ./hosts/${hostname}/configuration.nix
	  home-manager.nixosModules.home-manager {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;

          home-manager.sharedModules = [
            nixvim.homeModules.nixvim
          ];
	  }
        ];
      };
  in
  {
    nixosConfigurations =
      nixpkgs.lib.foldl' (configs: host:
        configs // {
          ${host.hostname} = makeSystem host;
        }
      ) {} hosts;

    homeConfigurations.${user} =
      home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs {
          inherit system;
        };

        extraSpecialArgs = {
          inherit inputs homeStateVersion user;
        };

        modules = [
          nixvim.homeModules.nixvim
          ./users/spade/home.nix
        ];
      };
  };
}

