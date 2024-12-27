if true then return {} end
return {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
        opts.mapping["<CR>"] = nil
    end,
}
