return {
	"nvim-neo-tree/neo-tree.nvim",
	keys = {
		{ "<C-n>", "<CMD>Neotree filesystem reveal toggle<CR>" },
    { "<leader>fb", "<CMD>Neotree buffers reveal float<CR>" },
	},
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},

	--	config = function()
	--		vim.keymap.set("n", "<C-n>", ":Neotree reveal toggle<CR>", {})
	--
	----		require("neo-tree").setup({
	----			event_handlers = {
	----				{
	----					event = "file_open_requested",
	----					handler = function()
	----						require("neo-tree.command").execute({ action = "close_all_nodes" })
	----					end,
	----				},
	----			},
	----			filesystem = {
	----				follow_current_file = {
	----					enabled = true,
	----					leave_dirs_open = false,
	----				},
	----			},
	----		})
	--	end,
}
