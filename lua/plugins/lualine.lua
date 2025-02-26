--[[
return {
	{
		"nvim-lualine/lualine.nvim",
		opts = {
			options = {
				globalstatus = true,
				icons_enabled = true,
				theme = "auto",
				--theme = "gruvbox",
				section_separators = { left = "", right = "" },
				component_separators = { left = "", right = "" },
				disabled_filetypes = {},
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = { { "filename", file_status = true, path = 1 } },
				lualine_x = {},
				lualine_y = { "encoding", "filetype" },
				lualine_z = { "location" },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { { "filename", file_status = true, path = 1 } },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			extensions = { "fugitive", "toggleterm" },
		},
	},
}
]]

return {}
