require'nvim-treesitter.configs'.setup {
    textobjects = {
		-- select by parameter
		select = {
			enable = true,
			keymaps = {
				["ia"] = "@parameter.inner",
				["aa"] = "@parameter.outer",
				["if"] = "@function.inner",
			},
		},
		-- move between parameters and such
		move = {
			enable = true,
			set_jumps = true,
			goto_next_start = {
				["üm"] = "@function.outer",
				["üa"] = "@parameter.inner",
			},
			goto_next_end = {
				["üM"] = "@function.outer",
				["üA"] = "@parameter.outer",
			},
			goto_previous_start = {
				["üm"] = "@function.outer",
				["üa"] = "@parameter.inner",
			},
			goto_previous_end = {
				["üM"] = "@function.outer",
				["üA"] = "@parameter.outer",
			},
		},
	},


    highlight = {
        enable = true,
    },
    autotag = {
        enable = true,
    },
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    },
    indent = {
        enable = true,
    }
}
