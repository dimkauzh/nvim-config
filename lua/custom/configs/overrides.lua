local M = {}

-- Code color
M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "c",
    "markdown",
    "markdown_inline",
    "go",
    "gomod",
    "gosum",
    "python"
  },
}

-- LSP servers
M.mason = {
  ensure_installed = {
    "lua-language-server",
    "stylua",
    "gopls",
    "gofmt",
    "html-lsp",
    "clangd",
    "clang-format",
    "pyright",
  },
}

-- Git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
