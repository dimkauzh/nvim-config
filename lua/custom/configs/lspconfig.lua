local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "clangd", "gopls", "pyright" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- Automatically run gofmt on save for Go files
vim.api.nvim_exec([[
  augroup GoAutoFormat
    autocmd!
    autocmd BufWritePre *.go :silent! execute ':%!gofmt'
  augroup END
]], false)

