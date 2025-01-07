-- if true then return {} end
return {
    {
        "saghen/blink.cmp",
        opts = {
            keymap = {
                preset = "default",
                ["<TAB>"] = { "select_and_accept" },
            }
        },
    },
}
