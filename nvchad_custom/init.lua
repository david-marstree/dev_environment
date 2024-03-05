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
