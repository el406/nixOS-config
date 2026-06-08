{pkgs, ...} : {
	programs.nix-ld = {
	enable = true;
	libraries = with pkgs; [
        xorg.libX11
        xorg.libXcursor
  	xorg.libXext
  	xorg.libXrandr
  	xorg.libXrender
  	xorg.libXi
  	xorg.libXfixes
  	xorg.libxcb

  	wayland
  	libxkbcommon
	alsa-lib
    	libpulseaudio
    	pipewire


  	libGL
  	vulkan-loader
	];
	};
}

