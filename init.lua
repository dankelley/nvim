-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- Example Neovim Lua configuration
--require('lspconfig').julials.setup {}

local lspconfig = require('lspconfig')
-- Path to your custom sysimage
local sysimage_path = vim.fn.expand("~/.julia/environments/nvim-lspconfig/languageserver.so")

lspconfig.julials.setup({
    on_new_config = function(new_config, _)
        if vim.loop.fs_stat(sysimage_path) then
            -- Prepend the sysimage flag to the default julia command
            table.insert(new_config.cmd, "--sysimage=" .. sysimage_path)
        end
    end,
    -- Additional settings to prevent UI lag
    settings = {
        julia = {
            -- Avoids a synchronous shell call to find the environment
            executablePath = "julia",
        }
    }
})
