{pkgs, ...}:

{
  plugins = {
  	lsp = {
  	    enable = true;

	    servers = {

	    #lua lang server
	    lua-ls.enable = true;

	    #nix lang server
	    nixd.enable = true;

	    #pyright lang server
	    pyright.enable = true;

	    #c/cpp lang server
	    clangd.enable = true;

	    #zig lang server 
	    zls.enable = true;

	    #uiua
	    uiua.enable = true;

	    };

  	};
	lspconfig = {
	    enable = true;
	};
	blink-cmp = {
	    enable = true;
	};
  };

}
