local colors = {}

---@alias color string
---@return color[]
---@nodiscard
colors.get_colors = function ()
    return {
        None = "NONE",

        NormalFG = "#D4D4D4",
        NormalBG = "#211F1F",

        White = "#E7E7E7",
        Gray = "#C8C8C8",
        MidGray = "#A9A9A9",
        DarkGray = "#848484",
        Black = "#000000",
        Red = "#FD8A8A",
        Yellow = "#F1F7B5",
        Green = "#B2FFA3",
        Cyan = "#B7D3DF",
        Blue = "#9EA1DE",

        HotPink = "#FF46B4",
        Taffy = "#FF6CDF",
        BalletSlipper = "#FF7FDF",
        Carnation = "#FF90EF",
        Pink = "#FCAAFB",
        Blush = "#FEBEFE",
        Lavender = "#D59EFC",
        LightViolet = "#D6B4FC",
        
        Error = "#FF5050"
    }
end

return colors
