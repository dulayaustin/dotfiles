return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,

	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			transparent_background = false,
			integrations = {
				mason = true,
				neotree = true,
				which_key = false,
			},
		})

		vim.cmd.colorscheme("catppuccin")
	end,
}
