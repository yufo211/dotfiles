-- 標準機能
-- 折り返し時に表示行単位での移動できるようにする
vim.keymap.set("n", "j", "gj", { desc = "移動: 次の表示行へ" })
vim.keymap.set("n", "k", "gk", { desc = "移動: 前の表示行へ" })

-- 挿入モードで移動を楽にする
vim.keymap.set("i", "<C-j>", "<Down>", { desc = "挿入モード: カーソル下へ" })
vim.keymap.set("i", "<C-k>", "<Up>", { desc = "挿入モード: カーソル上へ" })
vim.keymap.set("i", "<C-h>", "<Left>", { desc = "挿入モード: カーソル左へ" })
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "挿入モード: カーソル右へ" })

-- 挿入モードのショートカットに合わせて<C-l>を左へ移動にする
-- 画面の再描画は<C-@>に割り当て
vim.keymap.set("n", "<C-l>", "l", { desc = "ノーマルモード: カーソル右へ" })
vim.keymap.set("n", "<C-@>", "<C-l>", { desc = "ノーマルモード: 画面再描画" })

-- ESC連打でハイライト解除
vim.keymap.set("n", "<Esc><Esc>", ":nohlsearch<CR><Esc>", { desc = "検索ハイライト解除" })

-- ターミナルの挿入モードからの離脱をESCに割り当てる
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "挿入モードから離脱" })

-- spaceを<leader>に割り当てる
vim.g.mapleader = " "

-- コマンドラインウィンドウがq:で表示されるのを無効化する
vim.keymap.set("n", "q:", "<Nop>")

-- dで文字を消すときにヤンクされないようにする
vim.keymap.set({ "n", "x" }, "d", '"_d', { noremap = true })
vim.keymap.set({ "n", "x" }, "D", '"_D', { noremap = true })

-- xで文字を消すときにヤンクされないようにする
vim.keymap.set({ "n", "x" }, "x", '"_x', { noremap = true })
vim.keymap.set({ "n", "x" }, "X", '"_X', { noremap = true })

-- cで文字を変えるときにヤンクされないようにする
vim.keymap.set({ "n", "x" }, "c", '"_c', { noremap = true })
vim.keymap.set({ "n", "x" }, "C", '"_C', { noremap = true })

-- sで文字を変えるときにヤンクされないようにする
vim.keymap.set({ "n", "x" }, "s", '"_s', { noremap = true })
vim.keymap.set({ "n", "x" }, "S", '"_S', { noremap = true })
