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

lspconfig = require "lspconfig"
util = require "lspconfig/util"

capabilities.textDocument.completion.completionItem.snippetSupport = true
lspconfig.gopls.setup {
    capabilities = capabilities,
    cmd = {"gopls", "serve"},
    filetypes = {"go", "gomod"},
    root_dir = util.root_pattern("go.work", "go.mod", ".git"),
    settings = {
      gopls = {
        analyses = {
          experimentalPostfixCompletions = true,
          unusedparams = true,
          shadow = true,
        },
        staticcheck = true,
      },
    },
}
