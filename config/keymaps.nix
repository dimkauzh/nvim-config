{
  keymaps = [
    # Neotree
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

    # Neotest
    {
      mode = "n";
      key = "<leader>tn";
      action.__raw = "function() require('neotest').run.run() end";
      options = {
        silent = true;
        desc = "Run nearest test";
      };
    }
    {
      mode = "n";
      key = "<leader>tf";
      action.__raw = "function() require('neotest').run.run(vim.fn.expand('%')) end";
      options = {
        silent = true;
        desc = "Run current file";
      };
    }
    {
      mode = "n";
      key = "<leader>ts";
      action.__raw = "function() require('neotest').summary.toggle() end";
      options = {
        silent = true;
        desc = "Toggle test summary panel";
      };
    }
    {
      mode = "n";
      key = "<leader>to";
      action.__raw = "function() require('neotest').output_panel.toggle() end";
      options = {
        silent = true;
        desc = "Toggle test output panel";
      };
    }

    # Glow
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

    # Lazygit
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

    # Trouble
    {
      mode = "n";
      key = "<leader>td";
      action = ":Trouble diagnostics toggle<cr>";
      options = {
        desc = "Open Trouble Diagnostics";
        nowait = true;
        silent = true;
      };
    }

    # Nvim native
    {
      mode = "n";
      key = "<leader>wv";
      action = "<C-w>H";
      options = {
        silent = true;
        desc = "Move active window to vertical split";
      };
    }
    {
      mode = "n";
      key = "<leader>wh";
      action = "<C-w>K";
      options = {
        silent = true;
        desc = "Move active window to horizontal split";
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
      key = "<leader>sv";
      action = ":vsplit<CR>";
      options = {
        desc = "Split buffers vertically";
        nowait = true;
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>sh";
      action = ":split<CR>";
      options = {
        desc = "Split buffers horizontally";
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

  # Anti-typos
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
