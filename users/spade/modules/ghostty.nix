{ pkgs, ... }:

{
  programs.ghostty = {
    enable = true;
    settings = {
      theme = "Retro";
      font-family = "Berkeley Mono";
      font-size = 14;
      window-padding-x = 10;
      window-padding-y = 10;
    };
    # define custom keybindings here
  };
}

