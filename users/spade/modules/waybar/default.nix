{
  programs.waybar = {
	enable = true;
	style = ./style.css;
	settings = {
		mainbar = {
		 layer = "top";
        	 position = "top";
		 modules-left = ["hyprland/workspaces"];
		 modules-center = ["custom/centerLogo"];
		 modules-right = ["pulseaudio" "bluetooth" "network"  "battery" "clock" "tray"];
		 
		 "custom/centerLogo" = {
        		format = " ";
        		tooltip = false;
      			};
		 "clock" = {
          		format = "{:%H:%M}";
          		format-alt = "{:%A, %B %d at %R}";
        		};

        	"tray" = {
          		icon-size = 14;
          		spacing = 1;
        		};
		
	
		}; 
		

	};

  };
}
