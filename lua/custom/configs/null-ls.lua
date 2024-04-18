local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {

  -- Webdev stuff
  b.formatting.deno_fmt,
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } },

  -- Lua
  b.formatting.stylua,

  -- Cpp
  b.formatting.clang_format,

  -- Go
  b.formatting.gofumpt,
  b.formatting.gofmt,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
