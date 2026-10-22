{ pkgs, ... }: {


  home.packages = with pkgs; [
	# base installs
	wget
	clang-tools
	vim
	
	#wm stuff
	xdg-desktop-portal-hyprland
	networkmanagerapplet
	
	#misc packages
	nautilus
	spotify
	xournalpp
	kicad
	freecad
	discord-canary
	zoom-us
	rednotebook
    blueman


	#latex
	texlive.combined.scheme-full

	#language servers
	pyright
	nixd

  ];
}
