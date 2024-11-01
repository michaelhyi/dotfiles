require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"asm",
		"c",
		"cpp",
		"css",
		"go",
		"html",
		"javascript",
		"lua",
		"markdown",
		"python",
		"sql",
	},

	sync_install = false,
	auto_install = true,

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
})
