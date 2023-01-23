local loaded, ufo = pcall(require, "ufo")
if (not loaded) then
    return
end

ufo.setup({
close_fold_kinds = {'imports', 'comment'},
    preview = {
        win_config = {
            border = {'', '─', '', '', '', '─', '', ''},
            winhighlight = 'Normal:Folded',
            winblend = 0
        },
    }
})
