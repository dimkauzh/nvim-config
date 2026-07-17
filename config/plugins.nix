{ pkgs, ... }:
{
  plugins = {
    web-devicons.enable = true;
    which-key.enable = true;
    glow.enable = true;
    lazygit.enable = true;
    wakatime.enable = true;
    colorizer.enable = true;
    trouble.enable = true;
    lsp-lines.enable = true;
    nvim-autopairs.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-path.enable = true;
    cmp-buffer.enable = true;

    cmp = {
      enable = true;
      settings = {
        sources = [
          { name = "nvim_lsp"; }
          { name = "path"; }
          { name = "buffer"; }
        ];

        mapping = {
          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
          "<C-n>" = "cmp.mapping.select_next_item()";
          "<C-p>" = "cmp.mapping.select_prev_item()";

          "<C-e>" = "cmp.mapping.abort()";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
        };
      };
    };

    mini = {
      enable = true;
      modules = {
        bufremove = { };
      };
    };

    bufferline = {
      enable = true;
      settings = {
        options = {
          close_command = "Bdelete! %d";
          right_mouse_command = "Bdelete! %d";
        };
      };
    };

    neotest = {
      enable = true;
      adapters = {
        go.enable = true;
        python.enable = true;
        zig.enable = true;
      };
    };

    lsp = {
      enable = true;
      servers = {
        bashls.enable = true;
        cmake.enable = true;
        marksman.enable = true;
        taplo.enable = true;
        yamlls.enable = true;
        lua_ls.enable = true;
        zls.enable = true;
        nixd.enable = true;
        gopls.enable = true;
        pyright.enable = true;
        ts_ls.enable = true;
        clangd.enable = true;
      };
    };

    presence = {
      enable = true;
      settings = {
        auto_update = true;
        neovim_image_text = "The most annoying editor";
        main_image = "file";
        client_id = "793271441293967371";
        log_level = null;
        debounce_timeout = 10;
        enable_line_number = true;
        blacklist = [ ];
        buttons = true;
        file_assets = { };
        show_time = true;
        editing_text = "Editing %s";
        file_explorer_text = "Browsing %s";
        git_commit_text = "Committing changes";
        plugin_manager_text = "Managing plugins";
        reading_text = "Reading %s";
        workspace_text = "Working on %s";
        line_number_text = "Line %s out of %s";
      };
    };

    conform-nvim = {
      enable = true;
      settings = {
        formatters_by_ft = {
          bash = [ "shfmt" ];
          make = [ "checkmake" ];
          markdown = [
            "prettierd"
            "prettier"
          ];
          toml = [ "taplo" ];
          yaml = [ "yamlfmt" ];
          lua = [ "stylua" ];
          zig = [ "zigfmt" ];
          nix = [ "nixfmt" ];
          go = [
            "gofmt"
            "goimports"
          ];
          python = [ "black" ];
          typescript = [
            "prettierd"
            "prettier"
          ];
          c = [ "clang-format" ];
          cpp = [ "clang-format" ];
        };
        format_on_save = {
          lsp_format = "fallback";
          timeout_ms = 500;
        };
      };
    };

    indent-blankline = {
      enable = true;
      settings = {
        scope = {
          enabled = true;
          show_start = true;
          show_end = false;
        };
      };
    };

    treesitter = {
      enable = true;
      highlight.enable = true;
      indent.enable = true;
    };

    telescope = {
      enable = true;
      settings = {
        defaults = {
          sorting_strategy = "ascending";
          layout_config = {
            prompt_position = "top";
          };
        };
      };

      keymaps = {
        "<leader>tg" = {
          action = "git_files";
          options.desc = "Telescope Git Files";
        };

        "<leader>tl" = {
          action = "live_grep";
          options.desc = "Telescope Live Grep";
        };

        "<leader>tf" = {
          action = "find_files";
          options.desc = "Telescope Find Files";
        };

        "<leader>tb" = {
          action = "current_buffer_fuzzy_find";
          options.desc = "Telescope Find in Current Buffer";
        };
      };
    };

    neo-tree = {
      enable = true;
      settings = {
        window = {
          position = "left";
          width = 30;
        };

        filesystem = {
          useLibuvFileWatcher = true;
          filtered_items = {
            visible = true;
            show_hidden = true;
            hide_dotfiles = false;
            hide_gitignored = false;
          };
          follow_current_file = {
            enabled = true;
            leave_dirs_open = true;
          };
        };
      };
    };

    lualine = {
      enable = true;

      settings = {
        options = {
          theme = "gruvbox-material";
          component_separators = "";
          section_separators = {
            left = "";
            right = "";
          };
          globalstatus = true;
        };

        sections = {
          lualine_a = [
            {
              __unkeyed-1 = "mode";
              icon = "";
              separator = {
                left = "";
              };
              padding = {
                left = 1;
                right = 2;
              };
            }
          ];
          lualine_b = [
            {
              __unkeyed-1 = "branch";
              icon = "";
            }
          ];
          lualine_c = [
            {
              __unkeyed-1 = "filename";
              file_status = true;
              path = 0;
            }
          ];

          lualine_x = [
            "encoding"
            "fileformat"
            "filetype"
          ];
          lualine_y = [
            "progress"
          ];
          lualine_z = [
            {
              __unkeyed-1 = "location";
              separator = {
                right = "";
              };
              padding = {
                left = 2;
                right = 1;
              };
            }
          ];
        };

        inactive_sections = {
          lualine_a = [ "filename" ];
          lualine_b = [ ];
          lualine_c = [ ];
          lualine_x = [ ];
          lualine_y = [ ];
          lualine_z = [ "location" ];
        };
      };
    };

    alpha = {
      enable = true;
      theme = null;

      settings.layout = [
        {
          type = "padding";
          val = 8;
        }
        {
          type = "text";
          val = [
            "                                                                       "
            "  ██████   █████                   █████   █████  ███                  "
            " ░░██████ ░░███                   ░░███   ░░███  ░░░                   "
            "  ░███░███ ░███   ██████   ██████  ░███    ░███  ████  █████████████   "
            "  ░███░░███░███  ███░░███ ███░░███ ░███    ░███ ░░███ ░░███░░███░░███  "
            "  ░███ ░░██████ ░███████ ░███ ░███ ░░███   ███   ░███  ░███ ░███ ░███  "
            "  ░███  ░░█████ ░███░░░  ░███ ░███  ░░░█████░    ░███  ░███ ░███ ░███  "
            "  █████  ░░█████░░██████ ░░██████     ░░███      █████ █████░███ █████ "
            " ░░░░░    ░░░░░  ░░░░░░   ░░░░░░       ░░░      ░░░░░ ░░░░░ ░░░ ░░░░░  "
            "                                                                       "
          ];
          opts = {
            position = "center";
            hl = "Type";
          };
        }
        {
          type = "padding";
          val = 2;
        }
        {
          type = "group";
          val = [
            {
              type = "button";
              val = "  New File";
              on_press.__raw = "function() vim.cmd('ene') end";
              opts = {
                position = "center";
                shortcut = "n";
                cursor = 3;
                width = 25;
                align_shortcut = "right";
                hl_shortcut = "Number";
              };
            }
            {
              type = "button";
              val = "  Explorer";
              on_press.__raw = "function() vim.cmd('Neotree focus') end";
              opts = {
                position = "center";
                shortcut = "e";
                cursor = 3;
                width = 25;
                align_shortcut = "right";
                hl_shortcut = "Number";
              };
            }
            {
              type = "button";
              val = "  LazyGit";
              on_press.__raw = "function() vim.cmd('LazyGit') end";
              opts = {
                position = "center";
                shortcut = "g";
                cursor = 3;
                width = 25;
                align_shortcut = "right";
                hl_shortcut = "Number";
              };
            }
            {
              type = "button";
              val = "󰈆  Quit";
              on_press.__raw = "function() vim.cmd('qa') end";
              opts = {
                position = "center";
                shortcut = "q";
                cursor = 3;
                width = 25;
                align_shortcut = "right";
                hl_shortcut = "Number";
              };
            }
          ];
        }
      ];
    };
  };

  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "smart-paste-nvim";
      src = pkgs.fetchFromGitHub {
        owner = "nemanjamalesija";
        repo = "smart-paste.nvim";
        rev = "7eef31499d910959fe94bb1a99dcdae6eb30f90b";
        hash = "sha256-N5R3E2aOm8Fz7OIqah05pZYn+MT3tnPxRN6KA/7Y+bM=";
      };
    })
  ];
}
