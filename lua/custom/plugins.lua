local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {
    {
    "akinsho/toggleterm.nvim"
    },
    {
    "andweeb/presence.nvim"
    },
    {
    'averms/black-nvim'
    },
    {
    'neovim/nvim-lspconfig'
    },
    {
    "ellisonleao/glow.nvim",
     config = true,
     cmd = "Glow"
    },
    {
    "Exafunction/codeium.vim"
    },
    {
    "neovim/nvim-lspconfig",
    config = function()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
    end,
    },
	
  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
