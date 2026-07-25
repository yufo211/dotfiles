-- 改行時に継続する記号（コメント文字列）の指定
vim.opt_local.comments = "b:*,b:-,b:+,b:1.,nb:>"

-- 挿入モードで改行するとき、行頭に現在のコメント文字列を自動挿入する
vim.opt_local.formatoptions:append("r")
