local colors = {}

---@alias color string
---@return color[]
---@nodiscard
colors.get_colors = function ()
    return {
        None = "NONE",

        NormalFG = "#D4D4D4",
        NormalBG = "#1F1F1F",

        Red = "#FD8A8A",
        Yellow = "#F1F7B5",
        Green = "#B2FFA3",
        Cyan = "#B7D3DF",
        Blue = "#9EA1DE",

        Taffy = "#FA86C4",
        BalletSlipper = "#F79AC0",
        Carnation = "#FFA6E9",
        Pink = "#FCBAFB",
        Blush = "#FECEFE"
    }
end

return colors
