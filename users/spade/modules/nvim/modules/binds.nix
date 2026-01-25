{pkgs, ...}: {
  keymaps = [
    {
      key = "<leader>ft";
      mode = "n";
      action = ":NvimTreeToggle<CR>";
      options = {
      	silent = true;
      };
    }
  ];
}
