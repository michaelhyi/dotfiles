require("telescope").setup({
    pickers = {
        find_files = {
            file_ignore_patterns = {
                '^.git/',
                '^.gradle/',
                '^.idea/',
                '^.settings/',
                '^.vscode/',
                '^bin/',
                '^build/',
                '^coverage/',
                '^node_modules/',
                ".classpath",
                ".DS_Store",
                ".factorypath",
                ".project",
            },
            hidden = true,
            no_ignore = true,
        },
    }
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fz', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
