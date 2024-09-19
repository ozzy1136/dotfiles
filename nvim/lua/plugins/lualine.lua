return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        opts = {
            options = {theme = "material"},
            sections = {
                lualine_c = {"harpoon2"},
                lualine_x = {
                    {
                        "filename",
                        file_status = true,
                        newfile_status = false,
                        path = 1,
                        shorting_target = 40,
                        symbols = {
                            modified = "[+]",
                            readonly = "[-]",
                            unnamed = "[No Name]",
                            newfile = "[New]",
                        },
                    }, "filetype",
                },
            },
        },
    }, {
        "letieu/harpoon-lualine",
        dependencies = {{"ThePrimeagen/harpoon", branch = "harpoon2"}},
    },
}
