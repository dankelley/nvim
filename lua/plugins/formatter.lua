return {
    -- increasing formatting time limit to 60 seconds
    -- see https://github.com/LazyVim/LazyVim/issues/51
    {
        "stevearc/conform.nvim",
        opts = {
            format = { timeout_ms = 60000 },
        },
    },
}
