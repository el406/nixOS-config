{pkgs, user, ...} : {
 users.users.spade = {
      isNormalUser = true;
      extraGroups = [ "wheel" "networkManager" ]; # Enable ‘sudo’ for the user.
      packages = with pkgs; [
      tree
     ];
   };
 home-manager.users.spade = {
	imports = [
		./../../users/spade/home.nix
		];
	};
}
