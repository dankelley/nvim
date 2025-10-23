-- return { "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {}, }

-- return { "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = { colorscheme = "gruvbox" }, }

-- return { "LazyVim/LazyVim", opts = { colorscheme = "slate" }, }
-- return {
--     "folke/tokyonight.nvim",
--     lazy = false,
--     priority = 1000,
--     opts = {},
-- }

return {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
        vim.api.nvim_set_hl(0, "SpellBad", { fg = "#FF0000", sp = "#FF0000", bold = true, undercurl = true })
    end,
    opts = ...
}

-- return {
--     "LazyVim/LazyVim",
--     opts = {
--         colorscheme = "slate",
--         -- colorscheme = "evening",
--         -- colorscheme = "habamax",
--         -- colorscheme = "industry",
--         -- colorscheme = "torte",
--     }
-- }
