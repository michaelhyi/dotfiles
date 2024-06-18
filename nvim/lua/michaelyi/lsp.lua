local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({ buffer = bufnr })
end)

require("java").setup()
require("mason").setup({})
require("mason-lspconfig").setup({
    ensure_installed = {
        "cssls",
        "dockerls",
        "eslint",
        "gradle_ls",
        "grammarly",
        "gopls",
        "graphql",
        "html",
        "lua_ls",
        "markdown_oxide",
        "pyright",
        "rust_analyzer",
        "sqlls",
        "tailwindcss",
        "tsserver",
        "yamlls"
    },
    handlers = {
        function(server_name)
            require("lspconfig")[server_name].setup({})
        end,
    }
})

local cmp = require("cmp")

cmp.setup({
    sources = {
        { name = "nvim_lsp" },
    },
    mapping = {
        ["<Tab>"] = cmp.mapping.confirm({ select = false }),
        ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = "select" }),
        ["<C-n>"] = cmp.mapping.select_next_item({ behavior = "select" }),
    },
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },
})
