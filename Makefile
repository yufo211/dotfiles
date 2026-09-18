DOTFILES_DIR := $(patsubst %/,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST)))))
CONFIG_DIR   := $(HOME)/.config

.PHONY: all ghostty git nvim tmux zed

all: ghostty git nvim tmux zed

git:
	unlink $(HOME)/.gitconfig || true
	ln -sfn $(DOTFILES_DIR)/.gitconfig $(HOME)/.gitconfig

nvim:
	mkdir -p $(CONFIG_DIR)
	unlink $(CONFIG_DIR)/nvim || true
	ln -sfn $(DOTFILES_DIR)/nvim $(CONFIG_DIR)/nvim

tmux:
	mkdir -p $(CONFIG_DIR)
	unlink $(CONFIG_DIR)/tmux || true
	ln -sfn $(DOTFILES_DIR)/tmux $(CONFIG_DIR)/tmux

zed:
	mkdir -p $(CONFIG_DIR)
	unlink $(CONFIG_DIR)/zed || true
	ln -sfn $(DOTFILES_DIR)/zed $(CONFIG_DIR)/zed

ghostty:
	mkdir -p $(CONFIG_DIR)
	unlink $(CONFIG_DIR)/ghostty || true
	ln -sfn $(DOTFILES_DIR)/ghostty $(CONFIG_DIR)/ghostty
