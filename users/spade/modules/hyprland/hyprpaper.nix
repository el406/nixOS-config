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

      wallpaper ={ 
	monitor = "";
        path = "${config.home.homeDirectory}/nix/users/spade/modules/hyprland/assets/background.png";
      };
    };
  };
}

