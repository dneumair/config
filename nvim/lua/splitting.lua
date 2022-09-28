vim.api.nvim_create_user_command(
    'SplitOpenLeft',
    function(opts)
        vim.cmd('vert sf '..opts.args)
    end,
    { nargs = 1,
     complete= 'file_in_path',
    }
)

vim.api.nvim_create_user_command(
    'SplitOpenRight',
    function(opts)
        vim.cmd('vert sf '..opts.args..' |wincmd r')
    end,
    { nargs = 1,
     complete= 'file_in_path',
    }
)

vim.api.nvim_create_user_command(
    'SplitOpenUp',
    function(opts)
        vim.cmd('sf '..opts.args)
    end,
    { nargs = 1,
     complete= 'file_in_path',
    }
)

vim.api.nvim_create_user_command(
    'SplitOpenDown',
    function(opts)
        vim.cmd('sf '..opts.args..' |wincmd R')
    end,
    { nargs = 1,
     complete= 'file_in_path',
    }
)
