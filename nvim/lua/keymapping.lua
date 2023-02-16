-- leader key to space
vim.keymap.set('', '<Space>', '<Leader>', { remap = true, silent = false })

-- some basic remaps for german quertz keyboard
vim.keymap.set({ 'n', 'v', 'x', 's' }, 'ö', ';', { noremap = true, silent = true })
vim.keymap.set({ 'n', 'v', 'x', 's' }, 'ä', ':', { noremap = true, silent = false })

-- multiline jumps should be part of the jumplist
vim.cmd("nnoremap <expr> k (v:count > 1 ? \"m'\" . v:count : '') . 'k'")
vim.cmd("nnoremap <expr> j (v:count > 1 ? \"m'\" . v:count : '') . 'j'")
vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true }) --
vim.keymap.set('n', '<C-u>', '<C-u>zz', { noremap = true, silent = true }) --
vim.keymap.set('n', '<C-o>', '<C-o>zz', { noremap = true, silent = true }) --
vim.keymap.set('n', '<C-i>', '<C-i>zz', { noremap = true, silent = true }) --

-- disable highlight on ESC
vim.keymap.set('n', '<ESC>', ':noh<CR>', { silent = true })

-- escape should not move cursor
vim.keymap.set('i', '<ESC>', '<ESC>`^', { silent = true })


-- LSP mappings
vim.keymap.set('n', 'gk', vim.lsp.buf.hover, { noremap = true, silent = true }) --
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { noremap = true, silent = true }) --
vim.keymap.set('n', '<leader>gg', vim.diagnostic.open_float, { noremap = true, silent = true }) --
vim.keymap.set('n', 'gj', vim.lsp.buf.code_action, { noremap = true, silent = true }) --
vim.keymap.set('n', 'gn', vim.diagnostic.goto_next, { noremap = true, silent = true }) --
vim.keymap.set('n', 'gp', vim.diagnostic.goto_prev, { noremap = true, silent = true }) --
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { noremap = true, silent = true }) --
vim.keymap.set('n', 'gW', vim.lsp.buf.workspace_symbol, { noremap = true, silent = true }) --
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { noremap = true, silent = true }) --
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, bufopts)
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { noremap = true, silent = true }) --

vim.keymap.set('n', '<leader>cc', vim.lsp.buf.format, { noremap = true, silent = true }) --

-- easier than ctrl-w
vim.keymap.set('n', '<leader>w', '<C-w>', { noremap = true, silent = false })


-- buffer mappings
-- vim.keymap.set( 'n', '<leader>ff', ':buffers<CR>' ,{noremap=true,silent=true} )
-- vim.keymap.set( 'n', '<leader>fo', ':Ex<CR>' ,{noremap=true,silent=true} )
vim.keymap.set('n', '<leader>fn', ':enew<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>fd', ':bdelete!<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>fw', ':w<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>fl', ':buffers', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>fq', ':w|bdelete<CR>', { noremap = true, silent = false })

vim.keymap.set('n', '<leader>fh', ':bprev<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>fl', ':bnext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>f1', ':b 1<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>f2', ':b 2<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>f3', ':b 3<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>f4', ':b 4<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>f5', ':b 5<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>f6', ':b 6<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>f7', ':b 7<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>f8', ':b 8<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>f9', ':b 9<cr>', { noremap = true, silent = true })

-- tabs mappings
vim.keymap.set('n', '<leader>tn', ':tabnew<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>tf', ':tabf ', { noremap = true, silent = false })


-- window split finds
vim.keymap.set('n', '<leader>sl', ':SplitOpenRight ', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>sh', ':SplitOpenLeft ', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>sk', ':SplitOpenUp ', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>sj', ':SplitOpenDown ', { noremap = true, silent = false })

-- folds
local ufo_loaded, ufo = pcall(require, "ufo")
if ufo_loaded then
    vim.keymap.set('n', 'tR', ufo.openAllFolds)
    vim.keymap.set('n', 'tM', ufo.closeAllFolds)
    vim.keymap.set('n', 'tr', ufo.openFoldsExceptKinds)
    vim.keymap.set('n', 'tm', ufo.closeFoldsWith) -- closeAllFolds == closeFoldsWith(0)
    vim.keymap.set('n', 'K', function()
        local winid = require('ufo').peekFoldedLinesUnderCursor()
        if not winid then
            vim.lsp.buf.hover()
        end
    end)
end
vim.keymap.set({ 'n', 'v' }, 'tl', 'zo', { noremap = true, silent = false })
vim.keymap.set({ 'n', 'v' }, 'tL', 'zCzOzt', { noremap = true, silent = false })
vim.keymap.set({ 'n', 'v' }, 'th', 'zc', { noremap = true, silent = false })
vim.keymap.set({ 'n', 'v' }, 'tH', 'zCzz', { noremap = true, silent = false })
vim.keymap.set({ 'n', 'v' }, 'tk', 'zk', { noremap = true, silent = false })
vim.keymap.set({ 'n', 'v' }, 'tj', 'zj', { noremap = true, silent = false })
--

-- telescope
local has_telescope, telescope_builtin = pcall(require, 'telescope.builtin')
if has_telescope then
    vim.keymap.set('n', '<leader>fu', ":Telescope<CR>", {})
    vim.keymap.set('n', '<leader>fo', telescope_builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', telescope_builtin.live_grep, {})
    vim.keymap.set('n', '<leader>ff', telescope_builtin.buffers, {})
    vim.keymap.set('n', '<leader>fz', telescope_builtin.help_tags, {})
    vim.keymap.set('n', '<leader>fm', telescope_builtin.lsp_document_symbols, {})
    vim.keymap.set('n', '<leader>fn', telescope_builtin.lsp_workspace_symbols, {})
    vim.keymap.set('n', '<leader>fi', telescope_builtin.git_files, {})
end

local has_fterm, fterm = pcall(require, 'FTerm')
if has_fterm then
    vim.keymap.set('n', '<F2>', '<CMD>lua require("FTerm").toggle()<CR>')
    vim.keymap.set('t', '<F2>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
end
