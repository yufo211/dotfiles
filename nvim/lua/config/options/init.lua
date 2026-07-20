-- アクティブなバッファの編集を有効化
-- （プラグインインストール時のエラー回避のため）
vim.api.nvim_buf_set_option(0, "modifiable", true)

-- 文字コードをUTF-8に設定
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- プロジェクトの設定ファイル`.nvim.lua`を読み込む
vim.opt.exrc = true

-- バックアップファイルを作らない
vim.opt.backup = false
vim.opt.writebackup = false

-- 編集中のファイルが変更されたら自動で読み直す
vim.opt.autoread = true

-- 入力中のコマンドをステータスに表示する
vim.opt.showcmd = true

-- ヘルプの表示言語の優先順位を日本語、英語の順にする
vim.opt.helplang = "ja,en"

-- 未保存で終了しようとしたときに確認する
vim.opt.confirm = true

-- ウィンドウのタイトルバーにファイル名を表示
vim.opt.title = true

-- インデントはスマートインデント
vim.opt.smartindent = true

-- 括弧入力時の対応する括弧を表示
vim.opt.showmatch = true

-- ステータスラインを常に表示
vim.opt.laststatus = 2

-- コマンドラインの補完
vim.opt.wildmode = "list:longest"

-- 字下げ、行末、開始地点以前をBackSpaceで消去可能にする
vim.opt.backspace = "indent,eol,start"

-- Tab入力をスペースに変換（タブ文字を使わない）
vim.opt.expandtab = true

-- Tab文字の表示幅を2スペースに設定
vim.opt.tabstop = 2

-- 自動インデントの幅をスペース2つ分に設定
vim.opt.shiftwidth = 2

-- Tabキー押下時の実際の挿入スペース数（expandtab時）を2に設定
vim.opt.softtabstop = 2

-- マウス操作の無効化
vim.opt.mouse = ""

-- 字下げ、行末、開始地点以前をBackSpaceで消去可能にする
vim.opt.backspace = "indent,eol,start"

-- クリップボードをVim以外のものと共通にする
vim.opt.clipboard = "unnamedplus"

-- 検索文字列が小文字の場合は大文字小文字を区別なく検索する
vim.opt.ignorecase = true

-- 検索文字列に大文字が含まれている場合は区別して検索する
vim.opt.smartcase = true

-- 検索文字列入力時に順次対象文字列にヒットさせる
vim.opt.incsearch = true

-- 検索時に最後まで行ったら最初に戻る
vim.opt.wrapscan = true

-- 検索語をハイライト表示
vim.opt.hlsearch = true
