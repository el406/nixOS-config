{ pkgs, ... }: {

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
	# base installs
	wget
	vim
	
	#wm stuff
	xdg-desktop-portal-hyprland
	networkmanagerapplet
	#misc packages
	spotify
	xournalpp
	kicad
	freecad
	discord-canary


	#latex
	texlive.combined.scheme-full
  ];
}
