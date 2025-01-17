require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"asm",
		"bash",
		"c",
		"cpp",
		"css",
		"go",
		"html",
		"javascript",
		"lua",
		"markdown",
		"proto",
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
