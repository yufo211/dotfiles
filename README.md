# dotfiles

## Setup

Run `make` to link every config below, or `make <target>` to link one of them.
`make` stops with an error when the destination is a real file or directory, so move it away first.

| Target    | Source       | Destination         |
| --------- | ------------ | ------------------- |
| `ghostty` | `ghostty/`   | `~/.config/ghostty` |
| `git`     | `.gitconfig` | `~/.gitconfig`      |
| `nvim`    | `nvim/`      | `~/.config/nvim`    |
| `tmux`    | `tmux/`      | `~/.config/tmux`    |
| `zed`     | `zed/`       | `~/.config/zed`     |

## Templates

`make` does not link these files.
Copy them by hand when you need them.

| Source             | Copy to               |
| ------------------ | --------------------- |
| `claude/CLAUDE.md` | `~/.claude/CLAUDE.md` |
| `opencode/`        | `~/.config/opencode/` |

## Lint and format

Run `pnpm install` once before the pnpm commands.

| Files                       | Tool                 | Check                 | Fix               |
| --------------------------- | -------------------- | --------------------- | ----------------- |
| JSON, JSONC, Markdown, YAML | Biome                | `pnpm run lint`       | `pnpm run format` |
| `nvim/**/*.lua`             | StyLua               | `stylua --check nvim` | `stylua nvim`     |
| All files                   | editorconfig-checker | `pnpm run lint`       | —                 |

CI runs every check in the table and the following checks as well.

- actionlint for `.github/workflows/`
- Syntax checks for `.gitconfig`, `Makefile` and `tmux/tmux.conf`
