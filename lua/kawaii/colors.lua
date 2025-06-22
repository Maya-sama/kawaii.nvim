local colors = {}

---@alias color string
---@return color[]
---@nodiscard
colors.get_colors = function ()
    local config = require("kawaii.config")

    return {
        None = "NONE",

        NormalFG = "#D4D4D4",
        NormalBG = "#211F1F",

        RealBG = config.opts.transparent
                     and "NONE"
                     or "#211F1F",

        White = "#F5EFFF",
        Gray = "#C8C8C8",
        MidGray = "#A9A9A9",
        DarkGray = "#848484",
        Black = "#000000",
        Red = "#FF5189",
        Yellow = "#FDFD96",
        Green = "#98FFB6",
        Cyan = "#C4D9FF",
        Blue = "#80A0FF",

        HotPink = "#FF5598",
        Taffy = "#FF64B8",
        BalletSlipper = "#FF6FBF",
        Carnation = "#FF84D0",
        Pink = "#FF99D7",
        Blush = "#FEC5F6",
        Violet = "#8F87F1",
        Lavender = "#D69EFF",
        LightViolet = "#E9A5F1",

        Warning = "#FFFF00",
        Error = "#FF5050",
        Directory = "#D2BCE9"
    }
end

return colors
