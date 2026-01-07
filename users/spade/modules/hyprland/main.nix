{config,pkgs, ...}:
let 
	binds = import ./binds.nix;

in
{
	
	
	wayland.windowManager.hyprland = {
	enable = true;	
	systemd.enable = true;
	
	settings = {
		"$mod" = "SUPER";
		inherit (binds) bind;
	};
	};	
}
