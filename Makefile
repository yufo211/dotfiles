DOTFILES_DIR := $(patsubst %/,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST)))))
CONFIG_DIR   := $(HOME)/.config

# Stop instead of overwriting because a real file or directory at the destination may hold settings that are not in this repository
define link
	@if [ -e "$(2)" ] && [ ! -L "$(2)" ]; then echo "error: $(2) already exists and is not a symlink" >&2; exit 1; fi
	ln -sfn $(1) $(2)
endef

.PHONY: all ghostty git nvim tmux zed

all: ghostty git nvim tmux zed

git:
	$(call link,$(DOTFILES_DIR)/.gitconfig,$(HOME)/.gitconfig)

nvim:
	mkdir -p $(CONFIG_DIR)
	$(call link,$(DOTFILES_DIR)/nvim,$(CONFIG_DIR)/nvim)

tmux:
	mkdir -p $(CONFIG_DIR)
	$(call link,$(DOTFILES_DIR)/tmux,$(CONFIG_DIR)/tmux)

zed:
	mkdir -p $(CONFIG_DIR)
	$(call link,$(DOTFILES_DIR)/zed,$(CONFIG_DIR)/zed)

ghostty:
	mkdir -p $(CONFIG_DIR)
	$(call link,$(DOTFILES_DIR)/ghostty,$(CONFIG_DIR)/ghostty)
