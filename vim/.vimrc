" Basic setting
" be iMproved, required
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
set autoread
set backspace=indent,eol,start
set foldlevel=99 "Open all folds
set termguicolors       " enable true colors support
set background=dark     " dark theme
set cursorline          " highlight current line
set statusline+=%#warningmsg#
set statusline+=%{SyntaxStatuslineFlag()}
set statusline+=%*
set guicursor=i:ver25-iCursor
set ignorecase
set smartcase
" set signcolumn="yes"
set relativenumber
set expandtab
set clipboard+="unnamedplus"

syntax on
filetype off                  " required
packloadall

" Plugin Setting
source ~/plug.vim





" Key mapping
let mapleader = " "
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
imap jk <C-[><CR>
nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv
nmap = <C-a>
nmap - <C-x>
nmap <F8> :TagbarToggle<CR>
nmap <C-s> :w<CR>
nnoremap <leader>e :NERDTreeToggle <CR> :AirlineRefresh <CR>
nnoremap <leader>to :tabnew <CR>
nnoremap <leader>tx :tabclose <CR>
nnoremap <leader>tn :tabnext <CR>
nnoremap <leader>tp :tabprevious <CR>
nnoremap <leader>1 :tabn 1<CR>
nnoremap <leader>2 :tabn 2<CR>
nnoremap <leader>3 :tabn 3<CR>
nnoremap <leader>4 :tabn 4<CR>
nnoremap <leader>5 :tabn 5<CR>
nnoremap <leader>6 :tabn 6<CR>
nnoremap <leader>7 :tabn 7<CR>
nnoremap <leader>8 :tabn 8<CR>
nnoremap <leader>9 :tabn 9<CR>
nnoremap <leader>sv :vsp<CR>
nnoremap <leader>sx :close<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fs :Ag<CR>
nnoremap <leader><right> :vertical resize+5 <CR>
nnoremap <leader><left> :vertical resize-5 <CR>
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
nnoremap <leader>fx :FloatermKill<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
inoremap <silent><expr> <c-@> coc#refresh()
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"



" Color scheme
colorscheme afterglow 
" Plugin Setting
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
		\ 'coc-prettier',
    \]
let g:typescript_indent_disable = 1
let g:typescript_opfirst='\%([<>=,?^%|*/&]\|\([-:+]\)\1\@!\|!=\|in\%(stanceof\)\=\>\)'
let g:user_emmet_install_global = 1
let g:user_emmet_settings = {
    \   'javascript': {
    \     'extends': 'jsx,tsx',
    \   }
    \ }
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
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal_code_blocks = 0
let g:markdown_fenced_languages = [
			\'html', 
			\'python', 
			\'bash=sh', 
			\'typescript', 
			\'javascript'
			\]
let g:searchtasks_list=["TODO", "FIXME", "XXX"]
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let &t_SI = "\e[6 q" " Vertical bar in insert mode
let &t_EI = "\e[2 q" " Block in normal mode



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

autocmd BufWritePost *.php :syntax enable
autocmd BufWritePost *.php :syntax on
autocmd FileType typescript :set makeprg=tsc
autocmd FileType html,css EmmetInstall
autocmd FileType * AnyFoldActivate

augroup autoformat_settings
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer yapf
  autocmd FileType javascript,vue,react,typescript,typescriptreact AutoFormatBuffer prettier
  autocmd FileType swift AutoFormatBuffer swift-format
augroup END


