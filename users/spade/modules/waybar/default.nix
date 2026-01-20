{
  programs.waybar = {
	enable = true;
	style = ./style.css;
	settings = {
		mainbar = {
		 layer = "top";
        	 position = "top";
		 modules-left = ["hyprland/workspaces"];
		 modules-center = ["hyprland/window"];
		 modules-right = ["pulseaudio" "bluetooth" "network"  "battery" "clock" "tray"];
		 
		 "clock" = {
          		format = "{:%H:%M}";
          		format-alt = "{:%A, %B %d at %R}";
        		};

        	"tray" = {
          		icon-size = 14;
          		spacing = 1;
        		};
		"battery" = {
			interval = 3;
			states = {
				good = 95;
				warning = 30;
				critical = 15;
			};
		};
		
	
		}; 
		

	};

  };
}
