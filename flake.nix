{
  description = "Config i stole from amper youtube video";

  inputs = {

    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
	

    # neovim overlay
    neovim-overlay = {
      url = "github:nix-community/neovim-nightly-overlay";
      inputs = { nixpkgs.follows = "nixpkgs"; };
    };

    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager,neovim-overlay, ... }@inputs: let
    system = "x86_64-linux";
    homeStateVersion = "25.05";
    user = "spade";
    hosts = [
      { hostname = "spade"; stateVersion = "25.05"; }
    ];

    overlays = [
    	neovim-overlay.overlays.default
	];

    makeSystem = { hostname, stateVersion }: nixpkgs.lib.nixosSystem {
      system = system;
      specialArgs = {
        inherit inputs stateVersion hostname user;
      };

      modules = [
       	({config, ...}: {
	nixpkgs.overlays = overlays;
	})

	./hosts/${hostname}/configuration.nix
      ];
    };

  in {
    nixosConfigurations = nixpkgs.lib.foldl' (configs: host:
      configs // {
        "${host.hostname}" = makeSystem {
          inherit (host) hostname stateVersion;
        };
      }) {} hosts;

    homeConfigurations.${user} = home-manager.lib.homeManagerConfiguration {
      pkgs = import nixpkgs {
      inherit system;
      overlays = overlays;
    };


      extraSpecialArgs = {
        inherit inputs homeStateVersion user;
      };

      modules = [
        ./users/spade/home.nix
      ];
    };
  };
}
