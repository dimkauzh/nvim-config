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
      autocmd BufWritePre *.go let save_cursor = getpos(".") | execute '%!gofmt' | call setpos('.', save_cursor)
    augroup END
  ]], false)
end
