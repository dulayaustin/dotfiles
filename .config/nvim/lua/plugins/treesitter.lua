return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",

	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = true,
			},
			indent = { enable = true },
		})
	end,
}
