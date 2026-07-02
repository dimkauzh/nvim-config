{
  keymaps = [
    {
      mode = "n";
      key = "<leader>e";
      action = ":Neotree focus<CR>";
      options = {
        silent = true;
        desc = "Toggle Neo-tree";
      };
    }
    {
      mode = "n";
      key = "<leader>q";
      action = ":Neotree toggle<CR>";
      options = {
        silent = true;
        desc = "Toggle Neo-tree";
      };
    }
    {
      mode = "v";
      key = "<leader>/";
      action = "gc";
      options = {
        remap = true;
        silent = true;
        desc = "Toggle comment for selection";
      };
    }
    {
      mode = "n";
      key = "<leader>/";
      action = "gcc";
      options = {
        remap = true;
        silent = true;
        desc = "Toggle comment line";
      };
    }
    {
      mode = "n";
      key = "<leader>lg";
      action = ":LazyGit<CR>";
      options = {
        desc = "Open LazyGit";
        nowait = true;
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>sp";
      action = ":set spell!<CR>";
      options = {
        desc = "Set or unset spell checking";
        nowait = true;
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>gl";
      action = ":Glow<CR>";
      options = {
        desc = "Run Glow";
        nowait = true;
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<C-c>";
      action = "y";
      options = {
        desc = "Safe file";
        nowait = true;
        silent = true;
      };
    }
    {
      mode = "";
      key = "<D-v>";
      action = "+p<CR>";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      mode = "!";
      key = "<D-v>";
      action = "<C-R>+";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      mode = "t";
      key = "<D-v>";
      action = "<C-R>+";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      mode = "v";
      key = "<D-v>";
      action = "<C-R>+";
      options = {
        noremap = true;
        silent = true;
      };
    }
  ];

  userCommands = {
    W = {
      command = "w<bang>";
      bang = true;
    };
    Q = {
      command = "q<bang>";
      bang = true;
    };
    WQ = {
      command = "wq<bang>";
      bang = true;
    };
  };
}
