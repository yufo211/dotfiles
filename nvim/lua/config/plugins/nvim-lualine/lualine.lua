-- nvim-lualine/lualine.nvim
require("lualine").setup({
	options = {
		theme = "auto",
	},
	sections = {
		lualine_c = {
			{
				"filename",
				path = 1, -- 相対パスで表示する
			},
		},
	},
})
