local loaded, inlay = pcall(require, 'inlay-hints')
if (not loaded) then
    return
end


inlay.setup(
-- {
--     eol = {
--         -- whether to align to the extreme right or not
--         right_align = false,
--         -- padding from the right if right_align is true
--         right_align_padding = 7,
--     }
-- })
)
