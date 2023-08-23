-- Auto command
-- rainbow load
vim.cmd([[
  autocmd bufReadPre,FileReadPre *.css,*.less,*.scss,*.js,*.jsx,*.typescript,*.typescriptreact :call rainbow#load()
]])

-- less compress
vim.cmd([[
  autocmd FileWritePost,BufWritePost *.less :call LessCSSCompress()
  function! LessCSSCompress()
    let cwd = expand('<afile>:p:h')
    let name = expand('<afile>:t:r')
    if (executable('lessc'))
      cal system('lessc '.cwd.'/'.name.'.less > '.cwd.'/'.name.'.css &')
    endif
  endfunction
]])

-- EmmetInstall
vim.cmd([[
  autocmd bufReadPre,FileReadPre *.html,*.css EmmetInstall
]])

-- Any Fold Activate 
vim.cmd([[
  autocmd FileType * AnyFoldActivate
]])

-- Auto format
vim.cmd([[
  augroup autoformat_settings
    autocmd FileType html,css,sass,scss,less,json,ejs :AutoFormatBuffer js-beautify
    autocmd FileType java :AutoFormatBuffer google-java-format
    autocmd FileType python AutoFormatBuffer yapf
    autocmd FileType javascript,vue,react,typescript,typescriptreact :AutoFormatBuffer prettier
    autocmd FileType swift :AutoFormatBuffer swift-format
  augroup END
]])

-- colorizer
vim.cmd([[
  autocmd bufReadPre,FileReadPre * :ColorizerAttachToBuffer
]])

-- tailwindCSS
vim.cmd([[
  autocmd bufReadPre,FileReadPre *.html,*.javascript,*.typescript,*.typescriptreact,*.css,*.less let b:coc_root_patterns = ['.git', '.env', 'tailwind.config.js', 'tailwind.config.cjs']
]])

-- other autocmd
vim.cmd([[
  autocmd BufWritePost *.php :syntax enable
  autocmd BufWritePost *.php :syntax on
  autocmd FileType typescript :set makeprg=tsc
  autocmd BufRead,BufNewFile *.ejs set filetype=ejs
]])

-- bufferline
vim.cmd([[
  autocmd BufReadPre,FileReadPre * :source ~/.config/nvim/lua/davidchu/plugins/bufferline.lua
]])
