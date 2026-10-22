{pkgs, ...} : {
	programs.nix-ld = {
	enable = true;
	libraries = with pkgs; [
	libx11
	libxcursor
	libxext
	libxrandr
	libxrender
	libxi
	libxfixes
  	libxcb

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

