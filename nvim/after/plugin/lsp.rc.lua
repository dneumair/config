local lsp = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
lsp.html.setup{
    capabilities = capabilities
}
lsp.terraformls.setup{}

lsp.cssls.setup {
capabilities = capabilities,
}
