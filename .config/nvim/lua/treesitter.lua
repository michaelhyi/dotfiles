require "nvim-treesitter.configs".setup {
    ensure_installed = {
        -- "c",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "markdown",
        "markdown_inline",

        "asm",
        "c",
        "cpp",
        "css",
        "go",
        "html",
        "java",
        "javascript",
        "python",
        "sql"
    },

    sync_install = false,
    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}
