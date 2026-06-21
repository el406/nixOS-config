{pkgs, ...}:
{

nixpkgs.config.allowUnfree = true;
plugins.transparent = {
  enable = true;
};

}
