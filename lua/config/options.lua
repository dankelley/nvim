-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.lazyvim_python_lsp = "pyright"
vim.g.lazyvim_python_fuff = "ruff_lsp"
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.g.maplocalleader = ","        -- NOTE 1
vim.opt.wrap = true               -- NOTE 2
vim.opt.clipboard = "unnamedplus" -- NOTE 3
vim.b.minipairs_disable = true    -- NOTE 4
