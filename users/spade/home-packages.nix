{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
	# base installs
	wget
	neofetch
	vim
	
	#wm stuff
	xdg-desktop-portal-hyprland
  ];
}
