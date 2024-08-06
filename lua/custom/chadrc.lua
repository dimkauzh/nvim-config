---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

-- Load the dashes
local dashes = require("lua.custom.dashes")

M.ui = {
  hl_override = highlights.override,
  hl_add = highlights.add,
  transparency = true,

  statusline = {
    theme = "minimal",
    separator_style = "round",
  },

  nvdash = {
    load_on_startup = true,
    header = dashes["pacman"]
  },
}

-- Loading the plugins
M.plugins = "custom.plugins"

-- Preload lazy packages
M.lazy_nvim = require "plugins.configs.lazy_nvim"
M.lazy_nvim.defaults.lazy = true

-- check core.mappings for table structure
M.mappings = require "custom.mappings"


return M
