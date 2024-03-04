local opt = vim.opt
local g = vim.g

g.codeium_disable_bindings = 1
opt.termguicolors = true
opt.relativenumber = true
local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

-- TailwindSortOnSaveToggle
autocmd("bufReadPre", {
  pattern = "*.jsx,*.js,*.html,*.tsx,*.ts,*.less,*.css,*.yaml,*.json",
  command = "TailwindSortOnSaveToggle",
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format { bufnr = args.buf }
  end,
})
