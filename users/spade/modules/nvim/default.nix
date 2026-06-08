{ config, pkgs, ... }:
{

  programs.nixvim = {
    enable = true;
    colorschemes.palette = {
    enable = true;
    };
    

    imports = [
	./modules
    ];
    

};
}

