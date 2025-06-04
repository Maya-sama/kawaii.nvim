local theme = {}

theme.set_highlights = function (opts)
    local hl = vim.api.nvim_set_hl
    local c = require("kawaii.colors").get_colors()

    hl(0, "Normal", {
        fg = c.NormalFG,
        bg = opts.transparent
                 and c.None --vim.api.nvim_get_hl(0, { name = "Normal"}).bg
                 or c.NormalBG
    })

    -- Literals
    hl(0, "Constant", { fg = c.Pink })
    hl(0, "Boolean", { fg = c.Carnation })
    hl(0, "Number", { fg = c.Carnation })
    hl(0, "Float", { fg = c.Carnation })
    hl(0, "String", { fg = c.Cyan })

    -- Keywords
    hl(0, "Keyword", { fg = c.BalletSlipper })
    hl(0, "Statement", { fg = c.BalletSlipper })
    hl(0, "Conditional", { fg = c.BalletSlipper })
    hl(0, "Repeat", { fg = c.BalletSlipper })
    hl(0, "Label", { fg = c.BalletSlipper })
    hl(0, "Exception", { fg = c.Error })

    -- Preprocessor
    hl(0, "PreProc", { fg = c.Pink })
    hl(0, "Include", { fg = c.Pink })
    hl(0, "Define", { fg = c.Pink })
    hl(0, "Macro", { fg = c.Carnation })
    hl(0, "PreCondit", { fg = c.Taffy })

    -- Type-related
    hl(0, "Type", {
        fg = c.Blush,
        bold = true
    })
    hl(0, "Structure", { fg = c.BulletSlipper })
    hl(0, "Typedef", { fg = c.BulletSlipper })
    hl(0, "StorageClass", { fg = c.Blish })
    
    -- Misc
    hl(0, "Identifier", { fg = c.Carnation })
    hl(0, "Function", { fg = c.Carnation })
    hl(0, "Comment", {
        fg = c.DarkGray,
        italic = opts.italic_comments
    })
    hl(0, "Todo", {
        fg = c.None,
        bg = c.Blush,
        bold = true
    })
    hl(0, "Link", { underlined = opts.underline_link })
    hl(0, "Error", { fg = c.Red })
    
    for name, style in pairs(opts.override_colors or {}) do
        hl(0, name, style)
    end
end

return theme
