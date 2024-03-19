---@type MappingsTable
local M = {}

M.general = {
	n = {
		[";"] = { ":", "enter command mode", opts = { nowait = true } },

		-- tmux navigation
		["<C-h>"] = {
			"<cmd>NvimTmuxNavigateLeft<cr>",
			"tmux left",
		},
		["<C-j>"] = {
			"<cmd>NvimTmuxNavigateDown<cr>",
			"tmux down",
		},
		["<C-k>"] = {
			"<cmd>NvimTmuxNavigateUp<cr>",
			"tmux up",
		},
		["<C-l>"] = {
			"<cmd>NvimTmuxNavigateRight<cr>",
			"tmux right",
		},

		--  format with conform
		["<leader>fm"] = {
			function()
				require("conform").format()
			end,
			"formatting",
		},

		-- split window
		["<leader>sv"] = {
			"<cmd>vsplit<cr>",
			"Vertical Split",
		},

		-- close split window
		["<leader>sx"] = {
			"<cmd>close<cr>",
			"Close Vertical Split",
		},

		-- move lines up and down
		["K"] = {
			"<cmd>m .-2<cr>==",
			"move line up",
		},
		["J"] = {
			"<cmd>m .+1<cr>==",
			"move line down",
		},

		-- lazygit
		["<leader>gg"] = {
			"<cmd>LazyGit<cr>",
			"lazygit",
		},

		-- toggle
		["<leader>e"] = {
			"<cmd> NvimTreeToggle <CR>",
			"Toggle nvimtree",
		},

		["<leader>1"] = {
			function()
				vim.api.nvim_set_current_buf(vim.t.bufs[1])
			end,
			"Switct to tab 1",
		},

		["<leader>2"] = {
			function()
				vim.api.nvim_set_current_buf(vim.t.bufs[2])
			end,
			"Switct to tab 2",
		},

		["<leader>3"] = {
			function()
				vim.api.nvim_set_current_buf(vim.t.bufs[3])
			end,
			"Switct to tab 3",
		},

		["<leader>4"] = {
			function()
				vim.api.nvim_set_current_buf(vim.t.bufs[4])
			end,
			"Switct to tab 4",
		},

		["<leader>5"] = {
			function()
				vim.api.nvim_set_current_buf(vim.t.bufs[5])
			end,
			"Switct to tab 5",
		},

		["<leader>6"] = {
			function()
				vim.api.nvim_set_current_buf(vim.t.bufs[6])
			end,
			"Switct to tab 6",
		},

		["<leader>7"] = {
			function()
				vim.api.nvim_set_current_buf(vim.t.bufs[7])
			end,
			"Switct to tab 7",
		},

		["<leader>8"] = {
			function()
				vim.api.nvim_set_current_buf(vim.t.bufs[8])
			end,
			"Switct to tab 8",
		},

		["<leader>9"] = {
			function()
				vim.api.nvim_set_current_buf(vim.t.bufs[9])
			end,
			"Switct to tab 9",
		},

		-- chatgpt
		["<leader>ca"] = {
			"<cmd>ChatGPT<cr>",
			"ChatGPT",
		},
		["<leader>ce"] = {
			"<cmd>ChatGPTEditWithInstructions<cr>",
			"ChatGPT Edit",
		},
	},

	v = {
		[">"] = {
			">gv",
			"indent",
		},
		--move lines up and down
		["K"] = {
			":m '<-2<cr>gv=gv",
			"move line up",
		},
		["J"] = {
			":m '>+1<cr>gv=gv",
			"move line down",
		},
	},
}

M.disabled = {
	n = {
		["<C-n>"] = "",
	},
}

-- more keybinds!

return M
