-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local transparency = false


local M = {}

---@type Base46HLGroupsList
M.override = {
  Comment = {
    italic = true,
  },
}

---@type HLTable
M.add = {
  NvimTreeOpenedFolderName = { fg = "green", bold = true },
}

-- Define a function to set the transparency of NERDTree
function set_transparency()
  vim.cmd("hi Normal guibg=none ctermbg=none guifg=none ctermfg=none gui=NONE cterm=NONE")
  vim.cmd("hi NonText guibg=none ctermbg=none guifg=none ctermfg=none gui=NONE cterm=NONE")
  vim.cmd("hi NvimTreeNormal guibg=NONE ctermbg=NONE")
  vim.cmd("hi NvimTreeNormalNC guibg=NONE ctermbg=NONE")
  vim.cmd("hi NvimTreeCursorLine guibg=NONE ctermbg=NONE")
  vim.cmd("hi NvimTreeWinSeparator guibg=NONE ctermbg=NONE")
end

if transparency == true then
  -- Call the function on VimEnter, BufEnter, and WinEnter events
  vim.cmd("autocmd VimEnter * lua set_transparency()")
  vim.cmd("autocmd BufEnter * lua set_transparency()")
  vim.cmd("autocmd WinEnter * lua set_transparency()")
end

return M
