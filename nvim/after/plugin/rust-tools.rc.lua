local loaded, rt = pcall(require, "rust-tools")
if not loaded then
    return
end


local ih = require("inlay-hints")

rt.setup()
