if true then return {} end
-- A return {
-- A     {
-- A         "saghen/blink.cmp",
-- A         opts = {
-- A             -- snippets = {
-- A             --     expand = function(snippet, _)
-- A             --         return LazyVim.cmp.expand(snippet)
-- A             --     end,
-- A             -- },
-- A             -- appearance = {
-- A             --     -- sets the fallback highlight groups to nvim-cmp's highlight groups
-- A             --     -- useful for when your theme doesn't support blink.cmp
-- A             --     -- will be removed in a future release, assuming themes add support
-- A             --     use_nvim_cmp_as_default = false,
-- A             --     -- set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
-- A             --     -- adjusts spacing to ensure icons are aligned
-- A             --     nerd_font_variant = "mono",
-- A             -- },
-- A             -- completion = {
-- A             --     accept = {
-- A             --         -- experimental auto-brackets support
-- A             --         auto_brackets = {
-- A             --             enabled = true,
-- A             --         },
-- A             --     },
-- A             --     menu = {
-- A             --         draw = {
-- A             --             treesitter = { "lsp" },
-- A             --         },
-- A             --     },
-- A             --     documentation = {
-- A             --         auto_show = true,
-- A             --         auto_show_delay_ms = 200,
-- A             --     },
-- A             --     ghost_text = {
-- A             --         enabled = vim.g.ai_cmp,
-- A             --     },
-- A             -- },
-- A             --
-- A             -- -- experimental signature help support
-- A             -- -- signature = { enabled = true },
-- A             --
-- A             -- sources = {
-- A             --     -- adding any nvim-cmp sources here will enable them
-- A             --     -- with blink.compat
-- A             --     compat = {},
-- A             --     default = { "lsp", "path", "snippets", "buffer" },
-- A             --     cmdline = {},
-- A             -- },
-- A
-- A             keymap = {
-- A                 preset = "default",
-- A                 ["<TAB>"] = { "select_and_accept" },
-- A             },
-- A         }
-- A     }
-- A }
