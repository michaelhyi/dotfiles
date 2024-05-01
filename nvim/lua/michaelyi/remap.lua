vim.g.mapleader = " "

vim.keymap.set('n', '<leader>ls', vim.cmd.Ex)

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
-- Close buffer
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)

map('n', '<leader>do', '<Cmd>DiffviewOpen<CR>', opts)
map('n', '<leader>dc', '<Cmd>DiffviewClose<CR>', opts)

map('n', '<leader>js', '<Cmd>JdtWipeDataAndRestart<CR>', opts)


vim.diagnostic.config({
  virtual_text = false, -- Turn off inline diagnostics
})

-- Use this if you want it to automatically show all diagnostics on the
-- current line in a floating window. Personally, I find this a bit
-- distracting and prefer to manually trigger it (see below). The
-- CursorHold event happens when after `updatetime` milliseconds. The
-- default is 4000 which is much too long

-- Show all diagnostics on current line in floating window
vim.api.nvim_set_keymap(
  'n', '<leader>d', ':lua vim.diagnostic.open_float()<CR>', 
  { noremap = true, silent = true }
)
-- Go to next diagnostic (if there are multiple on the same line, only shows
-- one at a time in the floating window)
vim.api.nvim_set_keymap(
  'n', '<leader>n', ':lua vim.diagnostic.goto_next()<CR>',
  { noremap = true, silent = true }
)
-- Go to prev diagnostic (if there are multiple on the same line, only shows
-- one at a time in the floating window)
vim.api.nvim_set_keymap(
  'n', '<leader>p', ':lua vim.diagnostic.goto_prev()<CR>',
  { noremap = true, silent = true }
)

vim.api.nvim_set_keymap("n", "<leader>f", ":Format<CR>", { noremap = true, silent = true })

