{ config, pkgs, ... }:
{

  programs.nixvim = {
    enable = true;
    colorschemes.palette = {
    enable = true;
    };
    opts = {
	number = true;
    	tabstop = 4;      
    	shiftwidth = 4;  
    	softtabstop = 4;
    	expandtab = true;
    };

    imports = [
	./modules
    ];
    

};
}

