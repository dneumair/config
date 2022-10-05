-- leader key to space
vim.keymap.set('', '<Space>', '<Leader>', { remap = true, silent = false })

-- some basic remaps for german quertz keyboard
vim.keymap.set({ 'n', 'v', 'x', 's' }, 'ö', ';', { noremap = true, silent = true })
vim.keymap.set({ 'n', 'v', 'x', 's' }, 'ä', ':', { noremap = true, silent = false })

-- multiline jumps should be part of the jumplist
vim.cmd("nnoremap <expr> k (v:count > 1 ? \"m'\" . v:count : '') . 'k'")
vim.cmd("nnoremap <expr> j (v:count > 1 ? \"m'\" . v:count : '') . 'j'")

-- disable highlight on ESC
vim.keymap.set('n', '<ESC>', ':noh<CR>', { silent = true })


-- LSP mappings
vim.keymap.set( 'n', 'gk', vim.lsp.buf.hover ,{noremap=true,silent=true} ) --
vim.keymap.set( 'n', 'gd', vim.lsp.buf.definition ,{noremap=true,silent=true} ) --
vim.keymap.set( 'n', 'gD', vim.lsp.buf.declaration ,{noremap=true,silent=true} ) --
vim.keymap.set( 'n', 'gi', vim.lsp.buf.implementation ,{noremap=true,silent=true} ) --
vim.keymap.set( 'n', '<C-k>', vim.lsp.buf.signature_help, { noremap = true, silent = true })
vim.keymap.set( 'n', '<leader>D', vim.lsp.buf.type_definition, bufopts)
vim.keymap.set( 'n', '<leader>rn', vim.lsp.buf.rename, bufopts)
vim.keymap.set( 'n', 'gr', vim.lsp.buf.references, bufopts)
vim.keymap.set( 'n','<leader>ca', vim.lsp.buf.code_action ,{noremap=true,silent=true} ) --
vim.keymap.set( 'n','<leader>cf', vim.lsp.buf.format ,{noremap=true,silent=true} ) --

vim.keymap.set( 'n','<leader>cc', vim.lsp.buf.format ,{noremap=true,silent=true} ) --

-- easier than ctrl-w 
vim.keymap.set( 'n','<leader>w', '<C-w>', {noremap=true,silent=false} )


-- buffer mappings
vim.keymap.set( 'n', '<leader>ff', ':buffers<CR>' ,{noremap=true,silent=true} )
vim.keymap.set( 'n', '<leader>fo', ':Ex<CR>' ,{noremap=true,silent=true} )
vim.keymap.set( 'n', '<leader>fn', ':enew<CR>' ,{noremap=true,silent=true} )
vim.keymap.set( 'n', '<leader>fd', ':bdelete!<CR>' ,{noremap=true,silent=true} )
vim.keymap.set( 'n', '<leader>fw', ':w<CR>' ,{noremap=true,silent=true} )
vim.keymap.set( 'n', '<leader>fl', ':buffers' ,{noremap=true,silent=true} )
vim.keymap.set( 'n', '<leader>fq', ':w|bdelete<CR>' ,{noremap=true,silent=false} )

vim.keymap.set( 'n', '<leader>fh', ':bprev<CR>' ,{noremap=true,silent=true} )
vim.keymap.set( 'n', '<leader>fl', ':bnext<CR>' ,{noremap=true,silent=true} )
vim.keymap.set( 'n', '<leader>f1', ':b 1<cr>'   ,{noremap=true,silent=true} )
vim.keymap.set( 'n', '<leader>f2', ':b 2<cr>'   ,{noremap=true,silent=true} )
vim.keymap.set( 'n', '<leader>f3', ':b 3<cr>'   ,{noremap=true,silent=true} )
vim.keymap.set( 'n', '<leader>f4', ':b 4<cr>'   ,{noremap=true,silent=true} )
vim.keymap.set( 'n', '<leader>f5', ':b 5<cr>'   ,{noremap=true,silent=true} )
vim.keymap.set( 'n', '<leader>f6', ':b 6<cr>'   ,{noremap=true,silent=true} )
vim.keymap.set( 'n', '<leader>f7', ':b 7<cr>'   ,{noremap=true,silent=true} )
vim.keymap.set( 'n', '<leader>f8', ':b 8<cr>'   ,{noremap=true,silent=true} )
vim.keymap.set( 'n', '<leader>f9', ':b 9<cr>'   ,{noremap=true,silent=true} )

-- tabs mappings
vim.keymap.set( 'n', '<leader>tn', ':tabnew<cr>'   ,{noremap=true,silent=true} )
vim.keymap.set( 'n', '<leader>tf', ':tabf '   ,{noremap=true,silent=false} )


-- window split finds
vim.keymap.set( 'n', '<leader>sl',':SplitOpenRight ' ,{noremap=true,silent=false} )
vim.keymap.set( 'n', '<leader>sh',':SplitOpenLeft ' ,{noremap=true,silent=false} )
vim.keymap.set( 'n', '<leader>sk',':SplitOpenUp ' ,{noremap=true,silent=false} )
vim.keymap.set( 'n', '<leader>sj',':SplitOpenDown ' ,{noremap=true,silent=false} )


