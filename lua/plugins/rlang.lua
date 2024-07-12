return {
  -- R support (see https://github.com/R-nvim/R.nvim)
  {
    "R-nvim/R.nvim",
    lazy = false,
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
  "R-nvim/cmp-r",
  {
    "hrsh7th/nvim-cmp",
    -- filetypes = { "r", "rmd", "quarto", "rnoweb", "rhelp" },
    config = function()
      require("cmp").setup({ sources = { { name = "cmp_r" } } })
      require("cmp_r").setup({})
    end,
  },
}
