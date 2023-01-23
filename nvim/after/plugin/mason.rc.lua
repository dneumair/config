local loaded, mason = pcall(require, "mason")
if loaded then
    mason.setup {}
end

local loaded, mason_lsp = pcall(require, "mason-lspconfig")
if loaded then
    mason_lsp.setup({
        ensure_installed = {
            "sumneko_lua",
            "terraformls",
            "rust_analyzer",
            "bashls"
        },
    })
end
