return {
	"folke/which-key.nvim",
	event = "VeryLazy",

	config = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300

		local which_key = require("which-key")
		which_key.setup()
		which_key.add({
			{ "<leader>ca", desc = "Code Action (LSP)" },
			{ "<leader>fb", desc = "Buffers Reveal (Neotree)" },
			{ "<leader>ff", desc = "Find File (Telescope)" },
			{ "<leader>fg", desc = "Live Grep (Telescope)" },
			{ "<leader>fh", desc = "Help Tags (Telescope)" },
			{ "<leader>gd", desc = "Definition (LSP)" },
			{ "<leader>gf", desc = "Format file (None-LS)" },
			{ "<leader>gr", desc = "References (LSP)" },
			{ "<leader>hp", desc = "Preview Hunk (Gitsigns)" },
			{ "<leader>ht", desc = "Toggle Current Line Blame (Gitsigns)" },
		})
	end,
}
