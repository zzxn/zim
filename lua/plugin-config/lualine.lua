require("lualine").setup({
    sections = {
        lualine_x = { "aerial" },
        lualine_c = { { "filename", path = 2, } },
    }
})
