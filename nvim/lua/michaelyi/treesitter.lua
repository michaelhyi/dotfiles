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
        "graphql",
        "html",
        "java",
        "javascript",
        "json",
        "markdown",
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
