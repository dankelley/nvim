if true then return {} end
return {
    "mfussenegger/nvim-lint",
    opts = {
        --linters_by_ft = { "markdownlint" },
        markdown = { "markdownlint" },
    },
    config = function()
        local markdownlint = require("lint").linters.markdownlint
        markdownlint.args = {
            "--disable",
            "MD013",
            "--", -- Required
        }
    end
}
