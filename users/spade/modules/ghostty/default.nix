{ pkgs, ... }:
let

  config = import ./config.nix;

in
{
  programs.ghostty = {
    enable = true;
    enableBashIntegration = true;
    installVimSyntax = true;
    settings = {
      theme = "Retro Legends";
      font-family = "Berkeley Mono";
      font-size = 14;
      window-padding-x = 10;
      window-padding-y = 10;
      custom-shader = config.shaders;
    };

    # define custom keybindings here


  };
}

