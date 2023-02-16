local loaded, toggleterm = pcall(require,"toggleterm")
if (not loaded) then
    return
end

toggleterm.setup{}
