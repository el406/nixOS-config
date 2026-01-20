{ ... }: {
  imports = [
    ./modules
    ./home-packages.nix
  ];

  home = {
    username = "spade";
    homeDirectory = "/home/spade";
    stateVersion = "25.11";
  };
}
