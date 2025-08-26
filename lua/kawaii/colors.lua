local colors = {}

---@alias color string
---@return color[]
---@nodiscard
colors.get_colors = function ()
    local config = require("kawaii.config")

    return {
        NormalFG = "#DFDEDF",
        NormalBG = "#211F1F",

        White = "#F5EFFF",
        Gray = "#C8C8C8",
        MidGray = "#A9A9A9",
        DarkGray = "#848484",
        Black = "#000000",
        Red = "#FF5189",
        Yellow = "#FDFD96",
        Green = "#80FFB0",
        Cyan = "#C4D9FF",
        Blue = "#80A0FF",

        HotPink = "#FF5598",
        Taffy = "#FF78B8",
        Pink = "#FFA3D9",
        Blush = "#FFBDEF",
        Orchid = "#FF87FF",
        Lavender = "#D995FF",
        LightViolet = "#E999FF",

        Warning = "#FFFF00",
        Error = "#FF5050",
        Directory = "#EDD0EF",
        String = "#8ACCD5",
        CursorLine = "#323131"
    }
end

return colors
