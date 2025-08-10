local theme = {}

---@param opts table
theme.set_highlights = function (opts)
    local c = require("kawaii.colors").get_colors()

    ---@param name string
    ---@param style table
    local function hl(name, style)
        vim.api.nvim_set_hl(0, name, style)
    end
    
    hl("Normal", {
        fg = c.NormalFG,
        bg = opts.transparent
                 and c.None --vim.api.nvim_get_hl({ name = "Normal"}).bg
                 or c.NormalBG
    })

    -- Meta
    hl("Cursor", { fg = c.White })
    hl("lCursor", { fg = c.White })
    hl("CursorIM", { fg = c.White })
    hl("CursorLine", { bg = c.CursorLine })
    hl("CursorColumn", {})
    hl("ColorColumn", {})
    hl("LineNr", { fg = c.DarkGray })
    hl("CursorLineNr", { fg = c.MidGray })
    hl("Search", { bg = c.MidGray })
    hl("DiffAdd", { fg = c.Black, bg = c.Green })
    hl("DiffChange", { fg = c.Black, bg = c.Yellow })
    hl("DiffDelete", { fg = c.Black, bg = c.Red })
    hl("DiffText", { fg = c.Black, bg = c.Cyan })
    hl("SpellBad", { fg = c.Black, bg = c.Red })
    hl("SpellCap", { fg = c.Black, bg = c.Yellow })
    hl("SpellRare", { fg = c.Black,/bg = c.Cyan })
    hl("SpellLocal", { fg = c.Black, bg = c.Blue })

    -- Literals
    hl("Constant", { fg = c.LightViolet })
    hl("Boolean", { fg = c.LightViolet })
    hl("Number", { fg = c.LightViolet })
    hl("Float", { fg = c.LightViolet })
    hl("String", { fg = c.String })

    -- Keywords
    hl("Keyword", { fg = c.Taffy })
    hl("Statement", { fg = c.Taffy })
    hl("Conditional", { fg = c.Taffy })
    hl("Repeat", { fg = c.Taffy })
    hl("Label", { fg = c.Taffy })
    hl("Exception", { fg = c.HotPink })

    -- Preprocessor
    hl("PreProc", { fg = c.Lavender })
    hl("Include", { fg = c.Lavender })
    hl("Define", { fg = c.Lavender })
    hl("Macro", { fg = c.Lavender })
    hl("PreCondit", { fg = c.Lavender })

    -- Type-related
    hl("Type", {
        fg = c.Pink,
        italic = opts.italic_types,
        bold = opts.bold_types
    })
    hl("Structure", { fg = c.Taffy })
    hl("Typedef", { fg = c.Taffy })
    hl("StorageClass", { fg = c.Taffy })
    
    -- Misc
    hl("Identifier", { fg = c.Pink })
    hl("Function", { fg = c.Pink })
    hl("Operator", { fg = c.Blush })
    hl("Delimiter", { fg = c.Normal })
    hl("Comment", { fg = c.DarkGray, italic = opts.italic_comments })
    hl("Note", { fg = c.Warning, bold = true })
    hl("Todo", { fg = c.Error, bold = true })
    hl("Special", { fg = c.Yellow })
    hl("SpecialChar", { fg = c.Yellow })
    hl("SpecialComment", { fg = c.Green })
    hl("Link", { fg = c.Blue, underline = opts.underline_links })
    hl("Error", { fg = c.Error })
    hl("WarningMsg", { fg = c.Warning })
    hl("ErrorMsg", { fg = c.Error })
    hl("MoreMsg", { ctermfg = 213, fg = c.Orchid })

    -- Statusline
    hl("StatusLine", { fg = c.NormalFG, bg = c.StatusLineBG })
    hl("ModeMsg", { ctermfg = 15, fg = c.White })

    -- netrw
    hl("netrwDir", { fg = c.Pink, bold = true })
    hl("netrwPlain", { fg = c.White })
    hl("netrwClassify", { fg = c.Blush })
    hl("netrwList", { fg = c.White })
    hl("netrwHelpCmd", { fg = c.Pink })
    hl("netrwCmdNote", { fg = c.White })
    hl("netrwQHTopic", { fg = c.LightViolet })
    hl("netrwComment", { fg = c.MidGray })
    hl("netrwVersion", { fg = c.DarkGray })
    
    for name, style in pairs(opts.override_colors or {}) do
        hl(name, style)
    end
end

return theme
