require("mason-conform").setup()
require("conform").setup({
	formatters_by_ft = {
		c = { "clang-format" },
		cpp = { "clang-format" },
		css = { "stylelint" },
		go = { "goimports", "gofmt" },
		html = { "htmlbeautifier" },
		java = { "google-java-format" },
		javascript = { "prettierd", "prettier", stop_after_first = true },
		lua = { "stylua" },
		python = { "isort", "black" },
		sql = { "sqlfluff" },
	},
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
