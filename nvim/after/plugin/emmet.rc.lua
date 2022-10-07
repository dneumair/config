local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.emmet_ls.setup {
    capabilities = capabilities,
    filetype = {'html', 'css', 'scss', 'sass', 'less' },
    init_options = {
        html = {
            options = {
                ["bem.enabled"] = true,
            },
        },
    },
}
