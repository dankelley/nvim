return {
    'chomosuke/typst-preview.nvim',
    --lazy = false, -- or ft = 'typst'
    ft = 'typst',
    version = '1.*',
    build = function() require 'typst-preview'.update() end,
}
