{ pkgs, stateVersion, hostname, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../nixos/modules
  ];

  environment.systemPackages = [ pkgs.home-manager ];
  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  networking.hostName = hostname;

  system.stateVersion = stateVersion;

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

}

