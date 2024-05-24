---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>tf"] = { ":ToggleTerm direction=float<CR>", "Open floating terminal", opts = { nowait = true, silent = true } },
    ["<leader>tc"] = { ":ToggleTerm direction=float<CR>", "Close floating terminal", opts = { nowait = true, silent = true } },
    ["<leader>gl"] = { ":Glow<CR>", "Run Glow", opts = { nowait = true, silent = true } },
    ["<leader>te"] = { ":Telescope find_files<CR>", "Open telescope", opts = { nowait = true, silent = true } },
    ["<leader>ld"] = { ":Lazy load all<CR>", "Lazy load all plugins", opts = { nowait = true, silent = true } },

    -- Dummy to ignore Glow
    ["<enter>"] = { "", "Ignore glow", opts = { nowait = true, silent = true } }
  },
  t = {
    ["<C-x>"] = { function ()
      vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true)
      vim.api.nvim_command(":ToggleTerm direction=float<CR>")
    end, "Close Terminal", opts = { nowait = true, silent = true }}
  }
}

-- Xclip support
if vim.fn.executable('xclip') == 1 then
  vim.opt.clipboard = "unnamedplus"

  vim.api.nvim_exec([[
    augroup YankToClipboard
      autocmd!
      autocmd TextYankPost * silent! lua vim.fn.system('xclip -selection clipboard', vim.fn.getreg('"'))
    augroup END
  ]], false)
end

-- Automatically run LazyLoadAll when Neovim starts
-- Gpaste support
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

-- Copy, paste and safe setup
if vim.g.neovide then
  vim.keymap.set('v', '<D-c>', '"+y') -- Copy
  vim.keymap.set('n', '<D-v>', '"+P') -- Paste normal mode
  vim.keymap.set('v', '<D-v>', '"+P') -- Paste visual mode
  vim.keymap.set('c', '<D-v>', '<C-R>+') -- Paste command mode
  vim.keymap.set('i', '<D-v>', '<ESC>l"+Pli') -- Paste insert mode
  vim.keymap.set('n', '<D-s>', ':w<cr>') -- Save in normal mode`
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

return M
