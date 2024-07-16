return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	keys = {
		{ "<C-n>", "<CMD>Neotree filesystem reveal toggle<CR>" },
		{ "<leader>fb", "<CMD>Neotree buffers reveal float<CR>" },
	},
	opts = {
		close_if_last_window = true,
		window = {
			mappings = {
				["Z"] = "close_all_nodes",
			},
		},
		filesystem = {
			follow_current_file = {
				enabled = true,
				leave_dirs_open = false,
			},
		},
	},
}
