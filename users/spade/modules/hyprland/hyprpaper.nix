{ pkgs, ... }: {
  services.hyprpaper = {
    enable = true;
    settings = {
      ipc = "on";
      splash = false;
      preload = [
        "background.jpg"
      ];
      wallpaper = [
        "background.jpg"
      ];
    };
  };
}

