{pkgs, ...}: {
  globals.mapleader = " ";
  keymaps = [
    {
      key = "<leader>f";
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
    {
      key = "<leader>ee";
      mode = "n";
      action = ":lua vim.diagnostic.open_float()<CR>";
      options = {
      	silent = true;
      };
    }

    {
      key = "<C-p>";
      mode = "n";
      action = ":lua require('conform').format()";
      options = {
      	silent = true;
      };
    }

 ];
}
