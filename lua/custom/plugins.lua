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
}

return plugins
