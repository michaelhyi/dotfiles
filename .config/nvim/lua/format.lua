require("conform").setup({
    formatters_by_ft = {
        c = { "clang-format" },
        cpp = { "clang-format" },
        css = { "stylelint" },
        go = { "gofmt" },
        html = { "htmlbeautifier" },
        java = { "google-java-format" },
        javascript = { "prettierd", "prettier", stop_after_first = true },
        lua = { "stylua" },
        python = { "isort", "black" },
        sql = { "sqlfluff" },
    },

    format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
    },
})
