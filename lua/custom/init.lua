vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.defer_fn(function()
      vim.cmd("Lazy load all")
    end, 500)  -- Delay of 1000 milliseconds (1 second)
  end,
})

