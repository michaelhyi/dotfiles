require("conform").setup({
    formatters_by_ft = {
        c = { "clang-format" },
        cpp = { "clang-format" },
        css = { "stylelint" },
        html = { "htmlbeautifier" },
        lua = { "stylua" },
        python = { "isort", "black" },
        java = { "google-java-format" },
        javascript = { "prettierd", "prettier", stop_after_first = true },
    },

    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_format = "fallback",
    },
})
