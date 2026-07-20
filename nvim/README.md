# nvim

setting of Neovim

## How to use

Put this repo in `~/.config` as `nvim`

```bash
mkdir ~/.config
cd ~/.config
git clone <git-repo>
```

## mason.nvim commands

> [`:h mason-commands`][help-mason-commands]

- `:Mason` - opens a graphical status window
- `:MasonUpdate` - updates all managed registries
- `:MasonInstall <package> ...` - installs/re-installs the provided packages
- `:MasonUninstall <package> ...` - uninstalls the provided packages
- `:MasonUninstallAll` - uninstalls all packages
- `:MasonLog` - opens the `mason.nvim` log file in a new tab window

## Formatters

### Lua

- [stylua](https://github.com/JohnnyMorganz/StyLua)

### Markdown

- [Prettier](https://github.com/prettier/prettier)
