local loaded, fterm = pcall(require, "FTerm")
if (not loaded) then
    return
end

require'FTerm'.setup({
    border = 'double',
    dimensions  = {
        height = 0.9,
        width = 0.9,
    },
})

