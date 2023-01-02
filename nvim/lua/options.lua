--set numbers
vim.opt.number = true
vim.opt.relativenumber = true
--search highlight

vim.opt.hlsearch = true
vim.opt.incsearch = true
--indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.wrap = true

vim.opt.scrolloff = 4
vim.opt.fileencoding = 'utf-8'
vim.opt.termguicolors = true
--cursor stuff
vim.opt.cursorline = true
vim.opt.cursorcolumn = false

vim.opt.ignorecase = true
vim.opt.title = true

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.shell = 'zsh'
vim.opt.inccommand = 'split'

vim.opt.backspace = 'start,eol,indent'

vim.opt.path:append { '**' }

vim.api.nvim_create_autocmd("InsertLeave", {
    pattern ='*',
    command = "set nopaste",
})






--popup stuff
vim.opt.winblend = 0
vim.opt.background = 'dark'
vim.opt.wildoptions = 'pum'
vim.opt.pumblend=5
vim.opt.showtabline=2

vim.opt.signcolumn='yes'

-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- vim.opt.foldcolumn='auto'
-- vim.opt.foldlevel=99

vim.o.foldcolumn = '1' -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true
