-- nvim-telescope/telescope.nvim

local IGNORED_EXTENSIONS = {
	-- 画像系
	"%.jpg",
	"%.jpeg",
	"%.png",
	"%.gif",
	"%.webp",
	"%.tiff",
	"%.bmp",
	"%.ico",
	-- 動画系
	"%.mp4",
	"%.mkv",
	"%.mov",
	"%.avi",
	"%.flv",
	"%.wmv",
	"%.webm",
	"%.m4v",
	-- 音声系
	"%.mp3",
	"%.wav",
	"%.flac",
	"%.ogg",
	"%.m4a",
	"%.aac",
	"%.wma",
	"%.alac",
	-- 文書系
	"%.pdf",
	-- 圧縮ファイル・アーカイブ
	"%.zip",
	"%.tar",
	"%.gz",
	"%.7z",
	"%.rar",
	"%.bz2",
	"%.xz",
	-- その他バイナリ
	"%.exe",
	"%.bin",
	"%.so",
	"%.dll",
	"%.o",
	"%.pyc",
	"%.dmg",
	"%.iso",
}

local custom_find_command = nil
local custom_grep_args = nil

-- rg(ripgrep)が使える場合の設定
if vim.fn.executable("rg") == 1 then
	-- ファイル名検索用のコマンド
	custom_find_command = {
		"rg",
		"--files",
		"--hidden", -- 隠しファイルを表示する
		"--glob",
		"!.git/*", -- .gitディレクトリの中身を除外する
	}

	-- 文字列検索用の引数
	custom_grep_args = {
		"rg",
		"--color=never",
		"--no-heading",
		"--with-filename",
		"--line-number",
		"--column",
		"--smart-case",
		"--hidden", -- 隠しファイルの中身も検索する
		"--glob",
		"!.git/*", -- .gitディレクトリの中身を除外する
	}

-- fdが使える場合の設定
elseif vim.fn.executable("fd") == 1 or vim.fn.executable("fdfind") == 1 then
	local fd_bin = vim.fn.executable("fd") == 1 and "fd" or "fdfind"
	custom_find_command = {
		fd_bin,
		"--type",
		"f", -- ファイルのみを表示する（ディレクトリは除外する）
		"--hidden", -- 隠しファイルを表示する
		"--exclude",
		".git", -- .gitディレクトリを除外する
	}
end

require("telescope").setup({
	defaults = {
		buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
		file_ignore_patterns = IGNORED_EXTENSIONS,
		vimgrep_arguments = custom_grep_args,
	},
	pickers = {
		find_files = {
			find_command = custom_find_command,
		},
	},
})
