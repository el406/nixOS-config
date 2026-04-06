{pkgs, ...}:
{

plugins.conform-nvim = {
  enable = true;
  autoload = true;
  formattersByFileType = {
        lua = [ "lua-ls" ];
        nix = [ "nix-d" ];
	java = ["jdtls"];


      };
};

}
