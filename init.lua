require "core"

local custom_init_path = vim.api.nvim_get_runtime_file("lua/custom/init.lua", false)[1]

if custom_init_path then
  dofile(custom_init_path)
end

require("core.utils").load_mappings()

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

-- bootstrap lazy.nvim!
if not vim.loop.fs_stat(lazypath) then
  require("core.bootstrap").gen_chadrc_template()
  require("core.bootstrap").lazy(lazypath)
end

dofile(vim.g.base46_cache .. "defaults")
vim.opt.rtp:prepend(lazypath)
require "plugins"

require "custom.configs.plugins"

-- Function to set transparency for various elements
--local function setTransparency()
  --vim.api.nvim_command('hi Normal guibg=NONE ctermbg=NONE')
  --vim.api.nvim_command('hi SignColumn guibg=NONE ctermbg=NONE')
  --vim.api.nvim_command('hi NvimTreeNormal guibg=NONE ctermbg=NONE')
  --vim.api.nvim_command('hi NvimTreeNormalNC guibg=NONE ctermbg=NONE')
--end

-- Automatically open NvimTree when Neovim starts
--vim.api.nvim_command('autocmd VimEnter * lua vim.defer_fn(function() vim.cmd("NvimTreeToggle") end, 0)')

-- Delay for 0.5 seconds and then apply transparency
--vim.fn.timer_start(100, function()
  --setTransparency()
--end)

