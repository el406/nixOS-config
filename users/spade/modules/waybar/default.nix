{
  programs.waybar = {
	enable = true;
	#style = ./style.css;
	settings = {
		mainbar = {
		 layer = "top";
        	 position = "top";
		 modules-left = ["hyprland/workspaces"];
		 modules-center = ["custom/centerLogo"];
		 modules-right = ["pulseaudio" "bluetooth" "network"  "battery" "clock" "tray"];
		 "custom/logo" = {
        		format = " ";
        		tooltip = false;
      			};
	
		}; 

	};

  };
}
