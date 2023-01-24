local loaded, ts_conf = pcall(require,"nvim-treesitter.configs")
if loaded then
    ts_conf.setup {
    ensure_installed = {"vim", "c", "yaml", "json", "lua", "rust", "go", "gomod"},
    highlight = {
        enable = true,
    },
    autotag = {
        enable = true,
    },
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    },
    indent = {
        enable = true,
    },
}
end

