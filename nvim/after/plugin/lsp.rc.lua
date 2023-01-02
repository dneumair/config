local lsp = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()
capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true
}

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
lsp.bashls.setup {
    capabilities = capabilities,
}
lsp.sumneko_lua.setup {
    capabilities = capabilities,
}


local util = require "lspconfig/util"

capabilities.textDocument.completion.completionItem.snippetSupport = true
lsp.gopls.setup {
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

lsp.rust_analyzer.setup({
    capabilities = capabilities,
    root_dir = lsp.util.root_pattern('.git'),
    settings = {
        ["rust-analyzer"] = {
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            cargo = {
                buildScripts = {
                    enable = true,
                },
            },
            procMacro = {
                enable = true,
            },
        },
    },
})
