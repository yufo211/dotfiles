return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	opts = {
		formatters_by_ft = {
			css = { "prettier" },
			html = { "prettier" },
			javascript = { "prettier" },
			json = { "prettier" },
			lua = { "stylua" },
			markdown = { "prettier" },
			ruby = { "rubocop" },
			typescript = { "prettier" },
			yaml = { "prettier", "yamlfmt", stop_after_first = true },
		},
		-- 自前のBufWritePreのautocmdは使わない
		-- lazy.nvimは遅延読み込みの直後にaugroup付きのautocmdしか再発火しないため、起動後最初の保存がフォーマットされない
		format_on_save = {},
	},
}
