local theme = {}

theme.set_highlights = function (opts)
    local hl = vim.api.nvim_set_hl
    local c = require("colors").get_colors()

    hl(0, "Normal", {
        fg = c.NormalFG,
        bg = opts.transparent
                 and vim.api.nvim_get_hl_by_name("Normal").bg
                 or c.NormalBG
    })

    for name, style in pairs(opts.override_colors or {}) do
        hl(0, name, style)
    end
end

return theme
