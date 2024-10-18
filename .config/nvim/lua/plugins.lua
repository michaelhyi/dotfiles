vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"

    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    }

    use {
        "nvim-telescope/telescope.nvim", tag = "0.1.8",
        requires = { { "nvim-lua/plenary.nvim" } }
    }

    use {
        "VonHeikemen/lsp-zero.nvim", branch = "v4.x",
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-nvim-lsp",
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }

    use "windwp/nvim-ts-autotag"

    use({
        "stevearc/conform.nvim",
        config = function()
            require("conform").setup()
        end,
    })

    use "github/copilot.vim"
end)
