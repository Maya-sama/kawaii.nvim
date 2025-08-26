local config = {
    opts = {}
}

local defaults = {
    italic_comments = false,
    underline_links = false,
    bold_types = false,
    italic_types = false,
    bg_blending_value = 1 / 16
}

---@param user_opts? table
config.setup = function (user_opts)
    config.opts = vim.tbl_extend("force", defaults, user_opts or {})
end

-- Initialize default config
config.setup()

return config
