vim.g.mapleader = " "
local keymap = vim.keymap

-- general
keymap.set("n", "<ESC>", "<ESC>:nohlsearch<CR>")
keymap.set("i", "jk", "<ESC>")
-- save
keymap.set("n", "<C-s>", ":w<CR>")
-- clipboard copy and paste
keymap.set("n", "<leader>p", ":r !pbpaste<CR>")

-- move line to the top or bottom
keymap.set("n", "K", ":m .-2<CR>==")
keymap.set("n", "J", ":m .+1<CR>==")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- tab control
keymap.set("n", "<leader>to", ":tabnew <CR>") -- create new tab
keymap.set("n", "<leader>tx", ":tabclose <CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabnext <CR>") -- next tab
keymap.set("n", "<leader>tp", ":tabprevious <CR>") -- previous tab
for i = 1, 9 do
  keymap.set("n", "<leader>tg" .. i, ":tabn " .. i .. "<CR>")
end

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close <CR>") -- close current split window

-- nerdtree toggle
keymap.set("n", "<leader>e", ":NERDTreeToggle<CR> :AirlineRefresh<CR>") -- toggle nerdtree

-- files search 
keymap.set("n", "<leader>ff", ":Files<CR>") -- search file name
keymap.set("n", "<leader>fs", ":Ag<CR>") -- search file content

-- floatterm
keymap.set("n", "<F6>", ":FloatermNew --cmd=\"/bin/bash\"<CR>")
keymap.set("n", "<F7>", ":FloatermNew! lazygit<CR>")
keymap.set("n", "<leader>fx", ":FloatermKill<CR>")

-- tagbar
keymap.set("n", "<F8>", ":TagbarToggle<CR>")

-- coc
vim.cmd([[
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gr <Plug>(coc-references)
  nmap <silent> [g <Plug>(coc-diagnostic-prev)
  nmap <silent> ]g <Plug>(coc-diagnostic-next)
  inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
]])

--codeium
vim.cmd([[
  imap <script><silent><nowait><expr> <C-g> codeium#Accept()
  imap <C-;>   <Cmd>call codeium#CycleCompletions(1)<CR>
  imap <C-,>   <Cmd>call codeium#CycleCompletions(-1)<CR>
  imap <C-x>   <Cmd>call codeium#Clear()<CR>
]])
