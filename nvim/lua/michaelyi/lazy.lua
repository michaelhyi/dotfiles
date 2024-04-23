local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{"Mofiqul/vscode.nvim"},
	{
		"nvim-telescope/telescope.nvim", tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup()
			builtin = require("telescope.builtin")
		end,
		keys = {
			{
				"<leader>ff",
				function()
					builtin.find_files()
				end
			}
		}
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")

            configs.setup({
                ensure_installed = {
                    "c",
                    "lua",
                    "vim",
                    "vimdoc",
                    "query",
                    "angular",
                    "asm",
                    "bash",
                    "cpp",
                    "css",
                    "csv",
                    "dockerfile",
                    "gitignore",
                    "graphql",
                    "groovy",
                    "html",
                    "java",
                    "javascript",
                    "json",
                    "kotlin",
                    "markdown",
                    "python",
                    "sql",
                    "typescript",
                    "yaml",
                },
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },  
            })
        end
    },
    {
        "github/copilot.vim",
        config = function()
            local sysname = vim.loop.os_uname().sysname
            if sysname == "Darwin" then
                vim.g.copilot_node_command 
                    = "/opt/homebrew/Cellar/node@18/18.19.1_1/bin/node"
            end
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" }
    }
})

