-- copied from https://github.com/richardsc/nvim?tab=readme-ov-file#better-solution-to-the-md013-warning
local HOME = os.getenv("HOME")
return {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
        linters = {
            ["markdownlint-cli2"] = {
                args = { "--config", HOME .. "/.markdownlint-cli2.yaml", "--" },
            },
        },
    },
}
