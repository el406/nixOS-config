{config,pkgs, ...}:
let 
	binds = import ./binds.nix;

in
{
	
	
	wayland.windowManager.hyprland = {
	enable = true;	
	#TODO: SWITCH TO LUA
	configType = "hyprlang";
	systemd.enable = true;
	xwayland.enable = true;
	


	settings = {
		"$mod" = "SUPER";
		inherit (binds) bind bindel;

	
	};
	};	
}
