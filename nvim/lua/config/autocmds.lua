-- ターミナルを挿入モードで開始する
vim.api.nvim_create_autocmd("TermOpen", {
	pattern = "*",
	callback = function()
		vim.cmd("startinsert")
	end,
})
