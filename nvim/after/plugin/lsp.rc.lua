local loaded, lsp = pcall(require, "lspconfig")
if not loaded then
    return
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require 'lspconfig'.emmet_ls.setup {
    capabilities = capabilities,
    filetype = { 'html', 'css', 'scss', 'sass', 'less' },
    init_options = {
        html = {
            options = {
                ["bem.enabled"] = true,
            },
        },
    },
}

local loaded, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if loaded then
    capabilities = require('cmp_nvim_lsp').default_capabilities()
    capabilities.textDocument.foldingRange = {
        dynamicRegistration = false,
        lineFoldingOnly = true
    }
end

lsp.html.setup {
    capabilities = capabilities
}
lsp.terraformls.setup {
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
lsp.yamlls.setup {
    capabilities = capabilities,
    settings = {
        yaml = {
            trace = {
                server = "verbose"
            },
            schemas = {
                kubernetes = "/*.yaml"
            },
            schemaDownload = {
                enable = true,
            },
        },
    },
}


lsp.lua_ls.setup {
    capabilities = capabilities,
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
}


local util = require "lspconfig/util"

local ih = require("inlay-hints")

capabilities.textDocument.completion.completionItem.snippetSupport = true
lsp.gopls.setup({
    on_attach = function(c, b)
        ih.on_attach(c, b)
    end,
    capabilities = capabilities,
    cmd = { "gopls", "serve" },
    filetypes = { "go", "gomod" },
    root_dir = util.root_pattern("go.work", "go.mod", ".git"),
    settings = {
        gopls = {
            analyses = {
                experimentalPostfixCompletions = true,
                unusedparams = true,
                shadow = true,
            },
            staticcheck = true,

            hints = {
                assignVariableTypes = true,
                compositeLiteralFields = true,
                compositeLiteralTypes = true,
                constantValues = true,
                functionTypeParameters = true,
                parameterNames = true,
                rangeVariableTypes = true,
            }
        },
    },
})


-- lsp.rust_analyzer.setup({
--     capabilities = capabilities,
--     root_dir = lsp.util.root_pattern('.git'),
--     settings = {
--         ["rust-analyzer"] = {
--             imports = {
--                 granularity = {
--                     group = "module",
--                 },
--                 prefix = "self",
--             },
--             cargo = {
--                 buildScripts = {
--                     enable = true,
--                 },
--             },
--             procMacro = {
--                 enable = true,
--             },
--         },
--     },
-- })
