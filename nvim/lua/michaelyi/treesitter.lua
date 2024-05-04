local configs = require("nvim-treesitter.configs")

configs.setup({
    ensure_installed = {
        "c",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "css",
        "dockerfile",
        "go",
        "graphql",
        "html",
        "java",
        "javascript",
        "json",
        "markdown",
        "rust",
        "sql",
        "typescript",
        "yaml"
    },
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
    autotag = {
        enable = true,
    },
})
