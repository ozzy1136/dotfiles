return {
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local harpoon = require("harpoon")
			harpoon:setup({})

			-- Telescope integration currently broken on Windows
			-- https://github.com/ThePrimeagen/harpoon/issues/491
			-- https://github.com/ThePrimeagen/harpoon/issues/627
			-- basic telescope configuration
			local conf = require("telescope.config").values
			local function toggle_telescope(harpoon_files)
				local file_paths = {}
				for _, item in ipairs(harpoon_files.items) do
					table.insert(file_paths, item.value)
				end

				require("telescope.pickers").new({}, {
					prompt_title = "Harpoon",
					finder = require("telescope.finders").new_table({
						results = file_paths,
					}),
					previewer = conf.file_previewer({}),
					sorter = conf.generic_sorter({}),
				}):find()
			end

			vim.keymap.set("n", "<leader>hl", function()
				-- harpoon.ui:toggle_quick_menu(harpoon:list())
				toggle_telescope(harpoon:list())
			end, { desc = "Open harpoon window" })
			vim.keymap.set("n", "<leader>ha", function()
				harpoon:list():add()
			end, { desc = "Add file to harpoon" })
			vim.keymap.set("n", "<leader>hr", function()
				harpoon:list():remove()
			end, { desc = "Remove file from harpoon" })
			vim.keymap.set("n", "<leader>hc", function()
				harpoon:list():clear()
			end, { desc = "Clear all files from harpoon" })
			vim.keymap.set("n", "<leader>hp", function()
				harpoon:list():prev()
			end, { desc = "Toggle previous buffer in Harpoon list" })
			vim.keymap.set("n", "<leader>hn", function()
				harpoon:list():next()
			end, { desc = "Toggle next buffer in Harpoon list" })
		end,
	},
}
