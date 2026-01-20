{pkgs, user, ...} : {
 users.users.spade = {
      isNormalUser = true;
      extraGroups = [ "wheel" "networkmanager" ];
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
