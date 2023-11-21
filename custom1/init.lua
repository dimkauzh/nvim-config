vim.cmd("call plug#begin()")

vim.cmd("Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}")
vim.cmd("Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}")
vim.cmd("Plug 'tanvirtin/monokai.nvim'")
vim.cmd("Plug 'codota/tabnine-nvim', { 'do': './dl_binaries.sh' }")
vim.cmd("Plug 'lithammer/nvim-pylance'")
vim.cmd("Plug 'preservim/nerdtree'")

vim.cmd("call plug#end()")

require("toggleterm").setup()

vim.cmd("syntax on")
vim.cmd("colorscheme monokai_pro")

function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<Leader>h", ":ToggleTerm")
