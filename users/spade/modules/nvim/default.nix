{ config, pkgs, ... }:
{

  programs.nixvim = {
    enable = true;
    colorschemes.catppuccin.enable = true;

    imports = [
	./modules
    ];
    
  };
}

