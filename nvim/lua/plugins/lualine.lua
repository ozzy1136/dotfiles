-- Colors are from scheme https://www.stephango.com/flexoki
local colors = {
    ui = "#282726",
    ui_2 = "#343331",
    ui_3 = "#403E3C",
    tx = "#CECDC3",
    tx_2 = "#878580",
    tx_3 = "#575653",
    red = "#D14D41",
    green = "#879A39",
    yellow = "#D0A215",
    purple = "#8B7EC8",
}

local flexoki = {
    normal = {
        a = {bg = colors.tx, fg = colors.ui, gui = "bold"},
        b = {bg = colors.ui_3, fg = colors.tx},
        c = {bg = colors.ui, fg = colors.tx_2},
    },
    insert = {
        a = {bg = colors.green, fg = colors.ui, gui = "bold"},
        b = {bg = colors.ui_3, fg = colors.tx},
        c = {bg = colors.ui, fg = colors.tx_2},
    },
    visual = {
        a = {bg = colors.yellow, fg = colors.ui, gui = "bold"},
        b = {bg = colors.ui_3, fg = colors.tx},
        c = {bg = colors.ui, fg = colors.tx_2},
    },
    replace = {
        a = {bg = colors.red, fg = colors.ui, gui = "bold"},
        b = {bg = colors.ui_3, fg = colors.tx},
        c = {bg = colors.ui, fg = colors.tx_2},
    },
    command = {
        a = {bg = colors.purple, fg = colors.ui, gui = "bold"},
        b = {bg = colors.ui_3, fg = colors.tx},
        c = {bg = colors.ui, fg = colors.tx_2},
    },
    inactive = {
        a = {bg = colors.ui, fg = colors.tx_3, gui = "bold"},
        b = {bg = colors.ui, fg = colors.tx_3},
        c = {bg = colors.ui, fg = colors.tx_3},
    },
}

return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        opts = {
            options = {theme = flexoki},
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
                    },
                },
            },
        },
    }, {
        "letieu/harpoon-lualine",
        dependencies = {{"ThePrimeagen/harpoon", branch = "harpoon2"}},
    },
}
