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

        White = "#E7E7E7",
        Gray = "#C8C8C8",
        MidGray = "#A9A9A9",
        DarkGray = "#848484",
        Black = "#000000",
        Red = "#FF5189",
        Yellow = "#FDFD96",
        Green = "#98FFB6",
        Cyan = "#B7D3DF",
        Blue = "#80A0FF",

        HotPink = "#FF46B4",
        Taffy = "#FF6CDF",
        BalletSlipper = "#FF7FDF",
        Carnation = "#FF90EF",
        Pink = "#FCAAFB",
        Blush = "#FEBEFE",
        Violet = "#D183E8",
        Lavender = "#D59EFC",
        LightViolet = "#D6B4FC",
        
        Error = "#FF5050"
    }
end

return colors
