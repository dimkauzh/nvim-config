local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")

local servers = { "clangd", "gopls", "pyright" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

if vim.fn.executable('gofmt') == 1 then
  -- Automatically run gofmt on save for Go files
  vim.api.nvim_exec([[
    augroup GoAutoFormat
      autocmd!
      autocmd BufWritePre *.go let save_view = winsaveview() | execute 'normal! mzgg=G`z' | call winrestview(save_view)
    augroup END
  ]], false)
end

local util = require'lspconfig.util'
lspconfig.gopls.setup {
   -- ...some other setups
   root_dir = function(fname)
      -- see: https://github.com/neovim/nvim-lspconfig/issues/804
      local mod_cache = vim.trim(vim.fn.system 'go env GOMODCACHE')
      if fname:sub(1, #mod_cache) == mod_cache then
         local clients = vim.lsp.get_active_clients { name = 'gopls' }
         if #clients > 0 then
            return clients[#clients].config.root_dir
         end
      end
      return util.root_pattern 'go.work'(fname) or util.root_pattern('go.mod', '.git')(fname)
   end,
}

