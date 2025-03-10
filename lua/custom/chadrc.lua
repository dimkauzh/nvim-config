---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

-- Load the dashes
local dashes = require("custom.dashes")

M.ui = {
  hl_override = highlights.override,
  hl_add = highlights.add,
  transparency = false,

  statusline = {
    theme = "minimal",
    separator_style = "round",
  },

  nvdash = {
    load_on_startup = false,
    header = dashes["neovim_4"],
    buttons = {},
  },
}

-- Loading the plugins
M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"


return M
