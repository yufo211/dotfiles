-- ファイル
-- プロジェクトの設定ファイル`.nvim.lua`を読み込む
vim.opt.exrc = true

-- バックアップファイルを作らない
vim.opt.writebackup = false

-- 未保存で終了しようとしたときに確認する
vim.opt.confirm = true

-- 表示
-- 行番号を表示
vim.opt.number = true

-- 編集中の行番号をハイライトする
vim.opt.cursorline = true

-- ウィンドウのタイトルバーにファイル名を表示
vim.opt.title = true

-- 括弧入力時の対応する括弧を表示
vim.opt.showmatch = true

-- ヘルプの表示言語の優先順位を日本語、英語の順にする
vim.opt.helplang = "ja,en"

-- インデント
-- インデントはスマートインデント
vim.opt.smartindent = true

-- Tab入力をスペースに変換（タブ文字を使わない）
vim.opt.expandtab = true

-- Tab文字の表示幅を2スペースに設定
vim.opt.tabstop = 2

-- 自動インデントの幅をスペース2つ分に設定
vim.opt.shiftwidth = 2

-- Tabキー押下時の実際の挿入スペース数（expandtab時）を2に設定
vim.opt.softtabstop = 2

-- 検索
-- 検索文字列が小文字の場合は大文字小文字を区別なく検索する
vim.opt.ignorecase = true

-- 検索文字列に大文字が含まれている場合は区別して検索する
vim.opt.smartcase = true

-- 入力
-- コマンドラインの補完
vim.opt.wildmode = "list:longest"

-- マウス操作の無効化
vim.opt.mouse = ""

-- クリップボードをVim以外のものと共通にする
vim.opt.clipboard = "unnamedplus"
