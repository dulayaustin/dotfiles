return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
		lazy = true, -- we let telescope load this for us
	},
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make",
	},
	{
		"nvim-telescope/telescope.nvim",
		keys = { -- only load the plugin when these keys are pressed:
			{ "<leader>ff", "<CMD>Telescope find_files<CR>" },
			{ "<leader>fg", "<CMD>Telescope live_grep<CR>" },
			{ "<leader>fh", "<CMD>Telescope help_tags<CR>" },
		},

		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local telescope = require("telescope")
			telescope.setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			telescope.load_extension("fzf")
			telescope.load_extension("ui-select")
		end,
	},
}







































