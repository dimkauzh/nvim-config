---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

-- Gpaste
if vim.fn.executable('gpaste-client') == 1 then
    vim.g.clipboard = {
        name = 'gpaste',
        copy = {
                ["+"] = { 'gpaste-client' },
                ["*"] = { 'gpaste-client' },
        },
        paste = {
                ["+"] = { 'gpaste-client', '--use-index', 'get', '0' },
                ["*"] = { 'gpaste-client', '--use-index', 'get', '0' },
        },
        cache_enabled = true,
    }
end

-- Save

vim.keymap.set('n', '<D-s>', ':w<CR>')

-- Copy and paste Setup

if vim.g.neovide then
  vim.keymap.set('v', '<D-c>', '"+y') -- Copy
  vim.keymap.set('n', '<D-v>', '"+P') -- Paste normal mode
  vim.keymap.set('v', '<D-v>', '"+P') -- Paste visual mode
  vim.keymap.set('c', '<D-v>', '<C-R>+') -- Paste command mode
  vim.keymap.set('i', '<D-v>', '<ESC>l"+Pli') -- Paste insert mode
end


-- Change size at runtime

vim.g.neovide_scale_factor = 1.0
local change_scale_factor = function(delta)
  vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
end
vim.keymap.set("n", "<C-=>", function()
  change_scale_factor(1.25)
end)
vim.keymap.set("n", "<C-->", function()
  change_scale_factor(1/1.25)
end)


-- Allow clipboard copy paste in neovim
vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true})

-- Keys Setup
vim.api.nvim_set_keymap('n', '<C-Q>', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-W>', ':ToggleTerm direction=float<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-x>', ':ToggleTerm direction=float<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-P>', ':Lazy load all<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-m>', ':Glow<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Tab>', 'codeium#Accept', { noremap = true, silent = true })

return M
