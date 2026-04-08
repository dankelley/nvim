return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main", -- Add this line
    build = ":TSUpdate",
    opts = {
        ensure_installed = {
            "r",
            "julia",
            "c",
            "markdown",
            "python",
            "regex",
            "yaml",
            "vim",
        },
    },
}
