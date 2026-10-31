-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		-- import your plugins
		{
			"loctvl842/monokai-pro.nvim",
			lazy = false,
			priority = 1000,
			config = function()
				require("monokai-pro").setup()
				vim.cmd.colorscheme("monokai-pro")
			end,
		},
		{
			"nvim-lualine/lualine.nvim",
			lazy = false,
			dependencies = { "nvim-tree/nvim-web-devicons" },
			config = function()
				require("config.plugins.nvim-lualine.lualine")
			end,
		},
		{
			"folke/which-key.nvim",
			event = "VeryLazy",
			opts = {},
			dependencies = { "nvim-tree/nvim-web-devicons", "nvim-mini/mini.icons" },
			keys = {
				{
					"<leader>?",
					function()
						require("which-key").show({ global = false })
					end,
					desc = "Buffer Local Keymaps (which-key)",
				},
			},
		},
		{
			"nvim-telescope/telescope.nvim",
			cmd = "Telescope",
			keys = {
				{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Telescope: find files" },
				{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Telescope: live grep" },
				{ "<leader>fk", "<cmd>Telescope keymaps<cr>", desc = "Telescope: keymappings" },
				{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Telescope: buffers" },
				{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Telescope: help tags" },
			},
			dependencies = {
				"nvim-lua/plenary.nvim",
				-- optional but recommended
				{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
			},
			config = function()
				require("config.plugins.nvim-telescope.telescope")
			end,
		},
		{
			"matze/vim-move",
			keys = {
				{ "<A-k>", mode = { "n", "v" }, desc = "Move current line/selection up" },
				{ "<A-j>", mode = { "n", "v" }, desc = "Move current line/selection down" },
				{ "<A-h>", mode = { "n", "v" }, desc = "Move current character/selection left" },
				{ "<A-l>", mode = { "n", "v" }, desc = "Move current character/selection right" },
			},
		},
		{
			"mason-org/mason-lspconfig.nvim",
			event = { "BufReadPre", "BufNewFile" },
			opts = {},
			dependencies = {
				{ "mason-org/mason.nvim", opts = {} },
				"neovim/nvim-lspconfig",
			},
		},
		{
			"windwp/nvim-autopairs",
			event = "InsertEnter",
			config = true,
		},
		{
			"stevearc/conform.nvim",
			event = { "BufWritePre" },
			cmd = { "ConformInfo" },
			opts = {},
			config = function()
				require("config.plugins.stevearc.conform")
			end,
		},
	},
	-- Configure any other settings here. See the documentation for more details.
	-- colorscheme that will be used when installing plugins.
	install = { colorscheme = { "habamax" } },
	-- automatically check for plugin updates
	checker = { enabled = true },
	-- disable luarocks
	rocks = {
		enabled = false,
	},
})
