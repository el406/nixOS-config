{ pkgs, ... }: {
  programs.neovim = {
    enable = true;
   	
    #i prefer bypassing to use my config, 
    #even if its imperative	 
    extraPackages = with pkgs; [
    ];
  };
}
