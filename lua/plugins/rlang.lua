return {
    -- R support (see https://github.com/R-nvim/R.nvim
    {
        "R-nvim/R.nvim",
        lazy = false,
        opts = { assignment_keymap = "_" },
    },
    {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "markdown", "markdown_inline", "r", "rnoweb" },
            })
        end,
    },
    --"R-nvim/cmp-r",
    --{
    --  "hrsh7th/nvim-cmp",
    --  --commit = "e1757aea6145d14208f3035f6b56c99e36593799",
    --  --filetypes = { "r", "rmd", "quarto", "rnoweb", "rhelp" },
    --  config = function()
    --    require("cmp").setup({ sources = { { name = "cmp_r" } } })
    --    require("cmp_r").setup({})
    --  end,
    --},
}
