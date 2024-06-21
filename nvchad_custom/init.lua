local g = vim.g
local opt = vim.opt

-- Global options
g.codeium_disable_bindings = 1

-- Options
opt.termguicolors = true
opt.relativenumber = true

-- Auto Commands
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

-- Auto format on save
autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end,
})

vim.cmd([[
  set noswapfile
  let &t_SI = "\e[6 q"
  let &t_EI = "\e[2 q"
  let @/=""

  filetype plugin indent on

  if ! exists("g:CheckUpdateStarted")
    let g:CheckUpdateStarted=1
    call timer_start(1,'CheckUpdate')
  endif
  function! CheckUpdate(timer)
    silent! checktime
    call timer_start(1000,'CheckUpdate')
  endfunction
]])
