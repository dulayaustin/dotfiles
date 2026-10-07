return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",

	config = function()
		local ts = require("nvim-treesitter")

		ts.install({ "lua", "vim", "vimdoc", "markdown", "markdown_inline", "ruby", "embedded_template", "javascript", "typescript", "tsx", "html", "css", "json", "yaml", "bash", "dockerfile", "gitignore" })

		vim.api.nvim_create_autocmd("FileType", {
			callback = function(args)
				local lang = vim.treesitter.language.get_lang(args.match)
				if not lang then
					return
				end

				if pcall(vim.treesitter.start, args.buf, lang) then
					-- keep regex highlighting alongside treesitter (was additional_vim_regex_highlighting)
					vim.bo[args.buf].syntax = "on"
				elseif vim.tbl_contains(ts.get_available(), lang) then
					-- replaces auto_install: parser is fetched in the background, active on next open
					ts.install(lang)
				end
			end,
		})
	end,
}
