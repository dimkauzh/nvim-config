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
}

return plugins
