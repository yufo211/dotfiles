-- stevearc/conform.nvim
require("conform").setup({
	formatters_by_ft = {
		css = { "prettier", stop_after_first = true },
		javascript = { "prettier", stop_after_first = true },
		json = { "prettier", stop_after_first = true },
		html = { "prettier", stop_after_first = true },
		lua = { "stylua" },
		markdown = { "prettier", stop_after_first = true },
		ruby = { "rubocop", stop_after_first = true },
		typescript = { "prettier", stop_after_first = true },
		yaml = { "prettier", "yamlfmt", stop_after_first = true },
	},
})

-- format on save autocmd
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
