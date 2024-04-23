vim.o.background = "dark"

local c = require("vscode.colors").get_colors()
require("vscode").setup({
    transparent = false,
    italic_comments = true,
    underline_links = true,
    disable_nvimtree_bg = true,
    color_overrides = {
        vscLineNumber = "#FFFFFF",
    },

    -- Override highlight groups (see ./lua/vscode/theme.lua)
    group_overrides = {
        -- this supports the same val table as vim.api.nvim_set_hl
        -- use colors from this colorscheme by requiring vscode.colors!
        Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
    }
})
-- require('vscode').load()

-- load the theme without affecting devicon colors.
vim.cmd.colorscheme "vscode"

