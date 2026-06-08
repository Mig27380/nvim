vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight yanked text",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank({ timeout = 200 })
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  desc = "Auto-create parent directories on save",
  group = vim.api.nvim_create_augroup("auto-create-dirs", { clear = true }),
  callback = function(event)
    local dir = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(event.buf), ":h")
    if dir ~= "" and vim.fn.isdirectory(dir) == 0 then
      vim.fn.mkdir(dir, "p")
    end
  end,
})
