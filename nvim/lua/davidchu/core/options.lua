local opt = vim.opt

opt.mouse = "a"
opt.re = 0
opt.encoding = "UTF-8"
opt.showtabline = 1
opt.number = true
opt.showcmd = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.autoindent = true
opt.smartindent = true
opt.cindent = true
opt.autoread = true
opt.backspace = "indent,eol,start"
opt.foldlevel = 99 
opt.termguicolors = true      -- enable true colors support
opt.background = "dark"     -- dark theme
opt.cursorline = true         -- highlight current line
opt.guicursor = "i:ver25-iCursor"
opt.ignorecase = true
opt.smartcase = true
opt.signcolumn = "yes"
opt.relativenumber = true
opt.expandtab = true
-- clipboard
opt.clipboard:append("unnamedplus")

vim.cmd([[
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
