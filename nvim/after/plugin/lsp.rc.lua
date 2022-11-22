local lsp = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()
lsp.html.setup{
    capabilities = capabilities
}
lsp.terraformls.setup{
    capabilities = capabilities,
}

lsp.cssls.setup {
    capabilities = capabilities,
}
lsp.clangd.setup {
    capabilities = capabilities,
}
