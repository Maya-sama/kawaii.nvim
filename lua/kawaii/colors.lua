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

        HotPink = "#DE3163",
        Taffy = "#DD88CF",
        BalletSlipper = "#EC7FA9",
        Carnation = "#F7A8C4",
        Pink = "#FFB8E0",
        Blush = "#FFEDFA",
        Violet = "#8F87F1",
        Lavender = "#C68EFD",
        LightViolet = "#E9A5F1",
        
        Error = "#FF5050"
    }
end

return colors
