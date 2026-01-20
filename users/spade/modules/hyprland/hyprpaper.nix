{ config, pkgs, ... }:

{
  services.hyprpaper = {
    enable = true;

    settings = {
      ipc = true;
      splash = false;

      preload = [
        "${config.home.homeDirectory}/nix/users/spade/modules/hyprland/background.png"
      ];

      wallpaper = [
        ",${config.home.homeDirectory}/nix/users/spade/modules/hyprland/background.png"
      ];
    };
  };
}

