return {
	{
		"lewis6991/gitsigns.nvim",

		config = function()
			require("gitsigns").setup()

      vim.keymap.set("n", "<leader>ht", "<CMD>Gitsigns toggle_current_line_blame<CR>", {})
      vim.keymap.set("n", "<leader>hp", "<CMD>Gitsigns preview_hunk<CR>", {})
      vim.cmd("Gitsigns toggle_current_line_blame")
		end,
	},
}
