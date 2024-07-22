return {
	"vim-test/vim-test",
	dependencies = {
		"preservim/vimux",
	},

	config = function()
		vim.keymap.set("n", "<leader>N", ":TestNearest<CR>")
		vim.keymap.set("n", "<leader>T", ":TestFile<CR>")
		vim.keymap.set("n", "<leader>A", ":TestSuite<CR>")
		vim.keymap.set("n", "<leader>L", ":TestLast<CR>")
		vim.keymap.set("n", "<leader>V", ":TestVisit<CR>")

		vim.cmd("let test#strategy = 'vimux'")
		vim.cmd("let g:test#preserve_screen = 0") -- Clear screen from previous run
	end,
}
