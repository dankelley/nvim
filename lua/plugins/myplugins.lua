return {
    -- R support
    {
        "R-nvim/R.nvim",
        lazy = false,
    },
    "R-nvim/cmp-r",
    {
        "hrsh7th/nvim-cmp",
        filetypes = { "r", "rmd", "quarto", "rnoweb", "rhelp" },
        config = function()
            require("cmp").setup({ sources = { { name = "cmp_r" } } })
            require("cmp_r").setup({})
        end,
    },
    -- treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "markdown", "markdown_inline", "r", "rnoweb" },
            })
        end,
    },
}
