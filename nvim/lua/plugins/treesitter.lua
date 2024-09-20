return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = function()
            require("nvim-treesitter.install").update({with_sync = true})()
        end,
        main = "nvim-treesitter.configs",
        opts = {
            ensure_installed = {
                "css", "html", "javascript", "jsdoc", "json", "lua", "regex",
                "sql", "svelte", "typescript", "yaml",
            },
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            indent = {enable = true},
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<cr>",
                    node_incremental = "<cr>",
                    node_decremental = "<bs>",
                    scope_incremental = false,
                },
            },
        },
    },
}
