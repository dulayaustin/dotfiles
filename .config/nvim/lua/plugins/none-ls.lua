return {
	"nvimtools/none-ls.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},

	config = function()
		local null_ls = require("null-ls")
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
		local conditional = function(fn)
			local utils = require("null-ls.utils").make_conditional_utils()
			return fn(utils)
		end

		null_ls.setup({
			on_attach = function(client, bufnr) -- auto format on save :w
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format()
						end,
					})
				end
			end,
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.completion.spell,
				conditional(function(utils)
					return utils.root_has_file("Gemfile")
							and null_ls.builtins.formatting.rubocop.with({
								command = "bundle",
								args = vim.list_extend(
									{ "exec", "rubocop" },
									null_ls.builtins.formatting.rubocop._opts.args
								),
							})
						or null_ls.builtins.formatting.rubocop
				end),
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.erb_format,
				require("none-ls.diagnostics.eslint"),
				null_ls.builtins.formatting.black,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
