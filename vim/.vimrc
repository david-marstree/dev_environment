" be iMproved, required
set nocompatible
filetype off                  " required

" Vim Plug
call plug#begin('~/.vim/plugged')
  " Airline
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " CtrlP
  Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }
  " split window
  Plug 'christoomey/vim-tmux-navigator'

  " Polyglot
  Plug 'sheerun/vim-polyglot'
  " Startup Page
  Plug 'mhinz/vim-startify'

  " Nerdtree
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'

  " NERD Commenter
  Plug 'scrooloose/nerdcommenter'
  Plug 'itchyny/lightline.vim'
  Plug 'tpope/vim-commentary'

  " Surround
  Plug 'tpope/vim-surround'

  " Line number
  Plug 'myusuf3/numbers.vim'

  " dark theme
  Plug 'danilo-augusto/vim-afterglow'
  " Tabline
  Plug 'mkitt/tabline.vim'

  " Syntastic
  Plug 'tpope/vim-fugitive'
  Plug 'ludovicchabant/vim-gutentags'
  Plug 'airblade/vim-gitgutter'

  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " Compiles your less files on the fly
  Plug 'groenewege/vim-less'

  " Prettier
  Plug 'prettier/vim-prettier', { 'do': 'yarn add', 'for': ['javascript', 'typescript', 'typescriptreact', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html', 'php'] }

  " AutoComplete
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'

  "search and highlight
  Plug 'markonm/traces.vim'
  Plug 'haya14busa/incsearch.vim'
  " IndentLine
  Plug 'yggdroot/indentline'

  " COC
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " Deoplete
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  " Show completion results from syntax highliting file
  Plug 'Shougo/neco-syntax'
  " Vim lsp support
  Plug 'prabirshrestha/vim-lsp'
  " Easy lsp server installation
  Plug 'mattn/vim-lsp-settings'

  "Javascript React typescript
  Plug 'pangloss/vim-javascript'
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
  Plug 'jparise/vim-graphql'

  "HTML
  Plug 'docunext/closetag.vim'
  Plug 'mattn/emmet-vim'
  Plug 'lilydjwg/colorizer'
  Plug 'dense-analysis/ale'

  "Markdown
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

call plug#end()

packloadall

let g:ctrlp_custom_ignore = {
 \ 'dir': '\.git$\|\.yardoc\|bower_components|node_modules|public$|log\|tmp$',
 \ 'file': '\.so$\|\.dat$|\.DS_Store$'
 \ }

" Vundle
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  " let Vundle manage Vundle, required
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'jiangmiao/auto-pairs'
  Plugin 'groenewege/vim-less'
call vundle#end()            " required
filetype plugin indent on    " required

call pathogen#infect()
"" Key Commands
let mapleader = " "
:nnoremap <leader>e :NERDTreeToggle <CR>
:nnoremap <leader>ff :FZF <CR>
:nnoremap <leader>fs :Rg <CR>
:nnoremap <leader>to :tabnew <CR>
:nnoremap <leader>tx :tabclose <CR>
:nnoremap <leader>tn :tabnext <CR>
:nnoremap <leader>tp :tabprevious <CR>
:nnoremap <leader>tg1 :tabn 1<CR>
:nnoremap <leader>tg2 :tabn 2<CR>
:nnoremap <leader>tg3 :tabn 3<CR>
:nnoremap <leader>tg4 :tabn 4<CR>
:nnoremap <leader>tg5 :tabn 5<CR>
:nnoremap <leader>tg6 :tabn 6<CR>
:nnoremap <leader>tg7 :tabn 7<CR>
:nnoremap <leader>tg8 :tabn 8<CR>
:nnoremap <leader>tg9 :tabn 9<CR>
:nnoremap <leader>sv :vsp<CR>
:nnoremap <leader>sx :close<CR>
:nnoremap <leader>mp :MarkdownPreview<CR>
:nnoremap <leader><left> :vertical resize+5 <CR>
:nnoremap <leader><right> :vertical resize-5 <CR>
" Clipboard copy and paste
:nnoremap <leader>p :r !pbpaste<CR>
:xnoremap <leader>y :%w !pbcopy<CR>

"" function typescript
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
"" for search highlight
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

set mouse=a
set re=0
set encoding=UTF-8
set showtabline=2
set number
set showcmd
set complete+=kspell
set completeopt=menuone,longest
set shortmess+=c
set shiftwidth=2
set autoindent
set smartindent
set cindent
set list lcs=tab:\|\ " (here is a space)
set nowrap

let g:prettier#config#prose_wrap = 'never'
let g:NERDTreeMinimalUI=1
let g:NERDTreeWinPos = "left"
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

"configure for languages
""Typescript
let g:typescript_indent_disable = 1
let g:typescript_opfirst='\%([<>=,?^%|*/&]\|\([-:+]\)\1\@!\|!=\|in\%(stanceof\)\=\>\)'
autocmd FileType typescript :set makeprg=tsc

""HTML
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:tagalong_verbose= 1
let g:user_emmet_leader_key=','

colorscheme afterglow
let g:airline_theme='afterglow'

let g:coc_global_extensions = [
    \ 'coc-tsserver'
    \]
" Use deoplete.
syntax on
"let g:deoplete#enable_at_startup = 1
let g:ale_fixers = {
      \   '*': ['remove_trailing_lines', 'trim_whitespace'],
      \   'html': ['prettier'],
      \   'css': ['stylelint'],
      \   'javascript': ['eslint', 'prettier'],
      \   'typescript': ['eslint', 'prettier'],
      \   'markdown': ['markdownlint'],
      \   'DockerFile': ['dockerfile_lint'],
      \}
let g:ale_linters = {
      \   'html': ['htmlhint'],
      \   'css': ['stylelint'],
      \   'javascript': ['eslint'],
      \   'typescript': ['eslint'],
      \   'markdown': ['markdownlint'],
      \   'DockerFile': ['dockerfile_lint'],
      \}
let g:ale_linters_explicit = 1
" let g:ale_fix_on_save = 1
let g:ale_completion_autoimport = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1


" javscript React typescript
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.php PrettierAsync


" Less compile
autocmd FileWritePost,BufWritePost *.less :call LessCSSCompress()
function! LessCSSCompress()
  let cwd = expand('<afile>:p:h')
  let name = expand('<afile>:t:r')
  if (executable('lessc'))
     cal system('lessc '.cwd.'/'.name.'.less > '.cwd.'/'.name.'.css &')
  endif
endfunction

" Command for Rg
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)
