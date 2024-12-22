-- https://www.reddit.com/r/neovim/comments/18rcqiw/comment/khh2tb9/
return {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
        opts.mapping["<CR>"] = nil
    end,
}
