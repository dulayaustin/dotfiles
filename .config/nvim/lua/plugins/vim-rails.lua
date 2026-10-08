return {
	"tpope/vim-rails",
	init = function()
		-- let gf resolve namespaced constants under app/, e.g. Views::Shared::PublicHeader -> app/views/shared/public_header.rb
		vim.g.rails_path_additions = { "app" }
	end,
}
