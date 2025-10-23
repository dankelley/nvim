-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- BLOCK 1 START
-- https://www.lazyvim.org/configuration/tips#disable-autoformat-for-some-buffers
vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "r" },
    callback = function()
        vim.b.autoformat = false
    end,
})

-- Make CR send one line to the Julia console
vim.api.nvim_create_autocmd("FileType", {
    pattern = "julia",
    callback = function()
        local iron = require("iron.core")
        -- Start the Julia REPL with <leader>jr
        vim.keymap.set("n", "<leader>jr", "<cmd>IronRepl<CR>", {
            buffer = true,
            desc = "Start Julia REPL",
        })
        -- Send current line to Julia REPL, then move down one line
        vim.keymap.set("n", "<CR>", function()
            iron.send_line()
            vim.cmd("normal! j")
            desc = "Send current line to Julia REPL"
        end, {
            buffer = true,
            desc = "Send line to Julia REPL and move down",
        })
    end,
})

-- BLOCK 1 END

-- BLOCK 2 START
-- https://github.com/Integralist/nvim/blob/main/lua%2Fautocommands.lua
-- always open quickfix window automatically.
-- this uses cwindows which will open it only if there are entries.
vim.api.nvim_create_autocmd("QuickFixCmdPost", {
    group = vim.api.nvim_create_augroup("AutoOpenQuickfix", { clear = true }),
    pattern = { "[^l]*" },
    command = "cwindow"
})
-- BLOCK 2 END
