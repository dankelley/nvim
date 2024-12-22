return {
    -- R support (see https://github.com/R-nvim/R.nvim
    {
        "R-nvim/R.nvim",
        lazy = false,
        opts = { assignment_keymap = "_" },
    },
    {
        -- https://github.com/R-nvim/R.nvim?tab=readme-ov-file#tree-sitter
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "markdown", "markdown_inline", "r", "rnoweb", "yaml", "csv" },
                highlight = { enable = true },
            })
        end
    },
    --"R-nvim/cmp-r", -- https://github.com/R-nvim/R.nvim?tab=readme-ov-file#autocompletion
    --{
    --    "hrsh7th/nvim-cmp",
    --    config = function()
    --        require("cmp").setup({ sources = { { name = "cmp_r" } } })
    --        require("cmp_r").setup({})
    --    end,
    --},
}
