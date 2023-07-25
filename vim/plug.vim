" Vim Plug
call plug#begin('~/.vim/plugged')
  " Color Scheme
  Plug 'danilo-augusto/vim-afterglow' "color schema afterglow
  Plug 'sainnhe/edge' "color schema edge
	Plug 'lifepillar/vim-solarized8' "color schema solarized
  " Display tools
  " Plug 'mhinz/vim-startify' " start screen
  Plug 'vim-airline/vim-airline' " status bar in bottom
  Plug 'vim-airline/vim-airline-themes' "theme for status bar in bottom
  Plug 'ryanoasis/vim-devicons' " nerdtree icon
  Plug 'itchyny/lightline.vim' " bottom statusbar
  Plug 'myusuf3/numbers.vim' " show line number
  "Plug 'mkitt/tabline.vim'  " tabline 
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
	Plug 'gilsondev/searchtasks.vim' " search Task comment TODO, FIXME, XXX
	Plug 'easymotion/vim-easymotion' "easymotion
	Plug 'pseewald/vim-anyfold' "anyfold
	Plug 'terryma/vim-multiple-cursors' "multiple cursors
	" Autocomplete.vim
  Plug 'Exafunction/codeium.vim' " Codeium AI
  Plug 'neoclide/coc.nvim', {'branch': 'release'} " auto complete
	" Coding
  Plug 'scrooloose/syntastic' " syntax check
  Plug 'docunext/closetag.vim' " auto close tag for HTML
  Plug 'ap/vim-css-color' " css color preview
  Plug 'mattn/emmet-vim' " emmet for HTML
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']} " markdown preview
	Plug 'mxw/vim-jsx' " jsx syntax

  " Neovim plugin
  Plug 'norcalli/nvim-colorizer.lua' " colorizer
  Plug 'nvim-tree/nvim-web-devicons' " Recommended (for coloured icons)
	Plug 'akinsho/bufferline.nvim', {'tag': 'v3.*'} " bufferline
call plug#end()

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  " let Vundle manage Vundle, required
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'groenewege/vim-less' " auto compile less
  Plugin 'ludovicchabant/vim-gutentags'
  Plugin 'google/vim-maktaba' "google formatter
  Plugin 'google/vim-codefmt' "google formatter
  Plugin 'google/vim-glaive' "google formatter continue
	Plugin 'frazrepo/vim-rainbow' "rainbow brackets
  Plugin 'godlygeek/tabular' "tabular for markdown
  Plugin 'preservim/vim-markdown' "markdown plugin
	Plugin 'hushicai/tagbar-javascript.vim' "tagbar for javascript
call vundle#end()            " required
call glaive#Install()
