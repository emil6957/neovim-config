require("lualine").setup {
    options = {
        icons_enabled = true,
        theme = "onedark",
        component_seperators = "|",
        section_seperators = "",
    },
    sections = {
        lualine_a = {
            {
                "buffers",
            }
        }
    }
}
