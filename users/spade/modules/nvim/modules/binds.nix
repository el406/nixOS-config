{pkgs, ...}: {
  globals.mapleader = " ";
  keymaps = [
    {
      key = "<leader>ft";
      mode = "n";
      action = ":NvimTreeToggle<CR>";
      options = {
      	silent = true;
      };
    }    
    {
      key = "<leader>ut";
      mode = "n";
      action = ":UndotreeToggle<CR>";
      options = {
      	silent = true;
      };
    }
    {
      key = "<leader>ff";
      mode = "n";
      action = ":Ex<CR>";
      options = {
      	silent = true;
      };
    }
 
  ];
}
