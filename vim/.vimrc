" be iMproved, required
" Basic setting
set nocompatible
set mouse=a
set re=0
set encoding=UTF-8
set showtabline=1
set number
set showcmd
set shortmess+=c
set shiftwidth=2
set tabstop=2
set autoindent
set smartindent
set cindent
set list lcs=tab:\|\ " (here is a space)
set nowrap 
set noswapfile
set backspace=indent,eol,start
syntax on
filetype off                  " required
packloadall




" Vim Plug
call plug#begin('~/.vim/plugged')
  " Display tools
  Plug 'danilo-augusto/vim-afterglow' "color schema
  Plug 'mhinz/vim-startify' " start screen
  Plug 'vim-airline/vim-airline' " status bar in bottom
  Plug 'vim-airline/vim-airline-themes' "theme for status bar in bottom
  Plug 'ryanoasis/vim-devicons' " nerdtree icon
  Plug 'itchyny/lightline.vim' " bottom statusbar
  Plug 'myusuf3/numbers.vim' " show line number
  Plug 'mkitt/tabline.vim'  " tabline 
  Plug 'yggdroot/indentline' "indent line
  Plug 'haya14busa/incsearch.vim' " search hightlight
  Plug 'markonm/traces.vim' " highlight when search and replace
  Plug 'voldikss/vim-floaterm' " floating window
  Plug 'airblade/vim-gitgutter' " git diff tip
	Plug 'tpope/vim-fugitive' "git command
	" Control Panel
  Plug 'christoomey/vim-tmux-navigator' " jump to another windows
  Plug 'scrooloose/nerdtree' " file explorer tree
  Plug 'majutsushi/tagbar'  " F8 to show function list
	" Functions
  Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' } " search tag
  Plug 'tpope/vim-commentary' " comment function
  Plug 'tpope/vim-surround' " surround function
  Plug 'groenewege/vim-less' " auto compile less
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " file searching
  Plug 'junegunn/fzf.vim' " file searching continue
	" Autocomplete
  Plug 'Exafunction/codeium.vim' " Codeium AI
  Plug 'neoclide/coc.nvim', {'branch': 'release'} " auto complete
	" HTML Coding
  Plug 'docunext/closetag.vim'
  Plug 'mattn/emmet-vim'
  Plug 'ap/vim-css-color'
call plug#end()




" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  " let Vundle manage Vundle, required
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'groenewege/vim-less'
  Plugin 'ludovicchabant/vim-gutentags'
  Plugin 'google/vim-maktaba'
  Plugin 'google/vim-codefmt'
  Plugin 'google/vim-glaive'
	Plugin 'frazrepo/vim-rainbow'
call vundle#end()            " required
call glaive#Install()


" Key mapping
let mapleader = " "
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
imap jk <C-[><CR>
nmap <F8> :TagbarToggle<CR>
nmap <C-s> :w<CR>
nnoremap <leader>e :NERDTreeToggle <CR>
nnoremap <leader>to :tabnew <CR>
nnoremap <leader>tx :tabclose <CR>
nnoremap <leader>tn :tabnext <CR>
nnoremap <leader>tp :tabprevious <CR>
nnoremap <leader>tg1 :tabn 1<CR>
nnoremap <leader>tg2 :tabn 2<CR>
nnoremap <leader>tg3 :tabn 3<CR>
nnoremap <leader>tg4 :tabn 4<CR>
nnoremap <leader>tg5 :tabn 5<CR>
nnoremap <leader>tg6 :tabn 6<CR>
nnoremap <leader>tg7 :tabn 7<CR>
nnoremap <leader>tg8 :tabn 8<CR>
nnoremap <leader>tg9 :tabn 9<CR>
nnoremap <leader>sv :vsp<CR>
nnoremap <leader>sx :close<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fs :Rg<CR>
nnoremap <leader><left> :vertical resize+5 <CR>
nnoremap <leader><right> :vertical resize-5 <CR>
nnoremap <leader>rr :syntax on<CR>
nnoremap <leader>p :r !pbpaste<CR>
nnoremap <C-v> :r !pbpaste<CR>
xnoremap <leader>y :%w !pbcopy<CR>
xnoremap <C-y> :%w !pbcopy<CR>
imap <script><silent><nowait><expr> <C-g> codeium#Accept()
imap <C-;>   <Cmd>call codeium#CycleCompletions(1)<CR>
imap <C-,>   <Cmd>call codeium#CycleCompletions(-1)<CR>
imap <C-x>   <Cmd>call codeium#Clear()<CR>
nmap <F7> :FloatermNew! lazygit<CR>
nmap <F6> :FloatermNew --cmd="/bin/bash"<CR>
nmap <F6> :FloatermNew --cmd="/bin/bash"<CR>
nnoremap <leader>fx :FloatermKill<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <c-@> coc#refresh()
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"




" Plugin Setting
colorscheme afterglow
let g:startify_custom_header = [
\'  $$\      $$\  $$$$$$\  $$$$$$$\   $$$$$$\    $$\',
\'  $$$\    $$$ |$$  __$$\ $$  __$$\ $$  __$$\   $$ |',
\'  $$$$\  $$$$ |$$ /  $$ |$$ |  $$ |$$ /  \__|$$$$$$\    $$$$$$\  $$$$$$\$$$$$$\',
\'  $$\$$\$$ $$ |$$$$$$$$ |$$$$$$$  |\$$$$$$\  \_$$  _|  $$  __$$\$$  __$$\$$__$$\ ',
\'  $$ \$$$  $$ |$$  __$$ |$$  __$$<  \____$$\   $$ |    $$ |\__|$$$$$$$$|$$$$$$$$|',
\'  $$ |\$  /$$ |$$ |  $$ |$$ |  $$ |$$\   $$ |  $$ |$$\ $$ |     $$____|$$\____|',
\'  $$ | \_/ $$ |$$ |  $$ |$$ |  $$ |\$$$$$$  |  \$$$$  |$$ |     \$$$$$$$\\$$$$$$$\ ',
\'  \__|     \__|\__|  \__|\__|  \__| \______/    \____/ \__|      \_______|\_______|',
\ ]
let g:NERDTreeMinimalUI = 1
let g:NERDTreeWinPos = "left"
let g:airline_theme='afterglow'
let g:ctrlp_custom_ignore = {
 \ 'dir': '\.git$\|\.yardoc\|bower_components|node_modules|public$|log\|tmp$',
 \ 'file': '\.so$\|\.dat$|\.DS_Store$'
 \ }
let g:tablineclosebutton=1
let g:codeium_disable_bindings = 1
let g:codeium_no_map_tab = 1
let g:airline_section_y = '{...}%3{codeium#GetStatusString()}'
let g:prettier#config#prose_wrap = 'never'
let g:coc_global_extensions = [
    \ 'coc-tsserver',
    \ 'coc-eslint',
    \ 'coc-json',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-highlight',
    \ 'coc-snippets',
    \ 'coc-markdownlint',
    \ 'coc-prettier',
    \]
let g:typescript_indent_disable = 1
let g:typescript_opfirst='\%([<>=,?^%|*/&]\|\([-:+]\)\1\@!\|!=\|in\%(stanceof\)\=\>\)'
let g:user_emmet_install_global = 0
let g:tagalong_verbose= 1
let g:user_emmet_leader_key=','
let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{js,jsx,ts,tsx,less,json}' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ ]
let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" Auto command
autocmd FileType css,less,scss,js,jsx,typescript,typescriptreact :call rainbow#load()
autocmd FileWritePost,BufWritePost *.less :call LessCSSCompress()
function! LessCSSCompress()
  let cwd = expand('<afile>:p:h')
  let name = expand('<afile>:t:r')
  if (executable('lessc'))
     cal system('lessc '.cwd.'/'.name.'.less > '.cwd.'/'.name.'.css &')
  endif
endfunction

autocmd BufWritePost *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.php :syntax enable
autocmd BufWritePost *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.php :syntax on
autocmd FileType typescript :set makeprg=tsc
autocmd FileType html,css EmmetInstall

augroup autoformat_settings
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer yapf
  autocmd FileType javascript,vue,react,typescript,typescriptreact AutoFormatBuffer prettier
  autocmd FileType swift AutoFormatBuffer swift-format
augroup END

command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-ignore-vcs --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)
