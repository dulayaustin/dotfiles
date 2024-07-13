return {
	"folke/which-key.nvim",
	event = "VeryLazy",

	config = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300

		local which_key = require("which-key")
		which_key.setup()
		which_key.register({
			c = {
				a = { "Code Action LSP" },
			},

      f = {
        b = { "Neotree buffers reveal float" },
        f = { "Telescope find_files" },
        g = { "Telescope live_grep" },
        h = { "Telescope help_tags" },
      },

			g = {
				d = { "Definition LSP" },
				f = { "Format file None-LS" },
				r = { "References LSP" },
			},

      h = {
       p = { "Gitsigns preview_hunk" },
       t = { "Gitsigns toggle_current_line_blame" },
      },
		}, { prefix = "<leader>" })
	end,
}
