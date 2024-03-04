---@type MappingsTable
local M = {}

M.general = {
	n = {
		[";"] = { ":", "enter command mode", opts = { nowait = true } },

		-- tmux navigation
		["<C-h>"] = { "<cmd>NvimTmuxNavigateLeft<cr>", "tmux left" },
		["<C-j>"] = { "<cmd>NvimTmuxNavigateDown<cr>", "tmux down" },
		["<C-k>"] = { "<cmd>NvimTmuxNavigateUp<cr>", "tmux up" },
		["<C-l>"] = { "<cmd>NvimTmuxNavigateRight<cr>", "tmux right" },

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
		["K"] = { "<cmd>m .-2<cr>==", "move line up" },
		["J"] = { "<cmd>m .+1<cr>==", "move line down" },

		-- lazygit
		["<leader>gg"] = {
			"<cmd>LazyGit<cr>",
			"lazygit",
		},
	},
	v = {
		[">"] = { ">gv", "indent" },
		--move lines up and down
		["K"] = { ":m '<-2<cr>gv=gv", "move line up" },
		["J"] = { ":m '>+1<cr>gv=gv", "move line down" },
	},
}

-- more keybinds!

return M
