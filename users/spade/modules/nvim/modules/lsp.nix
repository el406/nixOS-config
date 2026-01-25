{pkgs, ...}:

{
  plugins = {
  	lsp = {
  	    enable = true;
  	};
	lspconfig = {
	    enable = true;
	};
	blink-cmp = {
	    enable = true;
	};
  };

}
