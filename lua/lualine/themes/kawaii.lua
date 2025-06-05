local config = require("kawaii.config")
local c = require("kawaii.colors").get_colors()

return {
    normal = {
        a = { fg = c.Black, bg = c.White, gui = "bold" },
        b = { fg = c.NormalFG, bg = c.RealBG },
        c = { fg = c.NormalFG, bg = c.RealBG }
    },
    visual = {
        a = { fg = c.Black, bg = c.Cyan, gui = "bold" },
        b = { fg = c.NormalFG, bg = c.RealBG },
    },
    inactive = {
        a = { fg = c.Black, bg = c.MidGray },
        b = { fg = c.MidGray, bg = c.RealBG },
        c = { fg = c.MidGray, bg = c.RealBG }
    },
    replace = {
        a = { fg = c.Black, bg = c.Red, gui = "bold" },
        b = { fg = c.NormalFG, bg = c.RealBG },
        c = { fg = c.NormalFG, bg = c.RealBG }
    },
    insert = {
        a = { fg = c.Black, bg = c.Yellow, gui = "bold" },
        b = { fg = c.NormalFG, bg = c.RealBG },
        c = { fg = c.NormalFG, bg = c.RealBG }
    },
    terminal = {
        a = { fg = c.Black, bg = c.Green, gui = "bold" },
        b = { fg = c.NormalFG, bg = c.RealBG },
        c = { fg = c.NormalFG, bg = c.RealBG }
    },
    command = {
        a = { fg = c.Black, bg = c.Blue, gui = "bold" },
        b = { fg = c.NormalFG, bg = c.RealBG },
        c = { fg = c.NormalFG, bg = c.RealBG }
    }
}
