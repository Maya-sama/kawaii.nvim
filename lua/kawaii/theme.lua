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

    -- Meta
    hl(0, "Cursor", { fg = c.White })
    hl(0, "CursorLine", { fg = c.DarkGray })
    hl(0, "CursorColumn", {})
    hl(0, "ColorColumn", {})
    hl(0, "LineNr", { fg = c.DarkGray })
    hl(0, "CursorLineNr", { fg = c.MidGray })

    -- Literals
    hl(0, "Constant", { fg = c.LightViolet })
    hl(0, "Boolean", { fg = c.LightViolet })
    hl(0, "Number", { fg = c.LightViolet })
    hl(0, "Float", { fg = c.LightViolet })
    hl(0, "String", { fg = c.Cyan })

    -- Keywords
    hl(0, "Keyword", { fg = c.Taffy })
    hl(0, "Statement", { fg = c.Taffy })
    hl(0, "Conditional", { fg = c.Taffy })
    hl(0, "Repeat", { fg = c.Taffy })
    hl(0, "Label", { fg = c.Taffy })
    hl(0, "Exception", { fg = c.HotPink })

    -- Preprocessor
    hl(0, "PreProc", { fg = c.Lavender })
    hl(0, "Include", { fg = c.Lavender })
    hl(0, "Define", { fg = c.Lavender })
    hl(0, "Macro", { fg = c.Lavender })
    hl(0, "PreCondit", { fg = c.Lavender })

    -- Type-related
    hl(0, "Type", {
        fg = c.Blush,
        bold = true
    })
    hl(0, "Structure", { fg = c.Taffy })
    hl(0, "Typedef", { fg = c.Taffy })
    hl(0, "StorageClass", { fg = c.Carnation })
    
    -- Misc
    hl(0, "Identifier", { fg = c.Pink })
    hl(0, "Function", { fg = c.Carnation })
    hl(0, "Operator", { fg = c.Blush })
    hl(0, "Delimiter", { fg = c.Normal })
    hl(0, "Comment", {
        fg = c.DarkGray,
        italic = opts.italic_comments
    })
    hl(0, "Todo", {
        fg = c.White,
        bg = c.HotPink,
        bold = true
    })
    hl(0, "Special", { fg = c.Yellow })
    hl(0, "SpecialChar", { fg = c.Yellow })
    hl(0, "Directory", { fg = c.Taffy })
    hl(0, "Link", {
        fg = c.Blue,
        underlined = opts.underline_links
    })
    hl(0, "Error", { fg = c.Error })
    
    for name, style in pairs(opts.override_colors or {}) do
        hl(0, name, style)
    end
end

return theme
