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
    'neovim/nvim-lspconfig'
    },
    {
    "ellisonleao/glow.nvim",
     config = true,
     cmd = "Glow"
    },
    {
    "neovim/nvim-lspconfig",
    config = function()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
    end,
    },
    {
    "ray-x/go.nvim",
    dependencies = {  -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()
    end,
    event = {"CmdlineEnter"},
    ft = {"go", 'gomod'},
    build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
    },
}

return plugins
