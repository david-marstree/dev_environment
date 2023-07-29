syntax on
filetype indent on
packloadall

" Plugin Settings
source ~/plug.vim

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
    \ '@yaegassy/coc-tailwindcss3'
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

source ~/.config/nvim/init.lua.vim
