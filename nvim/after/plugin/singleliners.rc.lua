require('nvim-ts-autotag').setup{}
require('nvim-autopairs').setup {}
require('nvim_comment').setup()


require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}
