require('nvim-treesitter.configs').setup {
	ensure_installed = {'lua','javascript'},
	auto_install = true,
	autotag = {
		enable = true
	},
	autopairs = {
		enable = true
	},
	highlight = {
		enable = true
	}
}
