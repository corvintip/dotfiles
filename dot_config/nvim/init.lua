require("config.lazy")

vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"

vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full,full"

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when copying (yanking) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function () 
    vim.hl.on_yank({ timeout = 600 })
  end,
})
