{ config, pkgs, ... }:

{
  fonts.fontconfig.enable = true;

  fonts.packages = with pkgs; [
    nerdfonts
  ];

}

