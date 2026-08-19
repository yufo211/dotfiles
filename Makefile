DOTFILES_DIR := $(patsubst %/,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST)))))
CONFIG_DIR   := $(HOME)/.config

.PHONY: cli gui git nvim tmux zed ghostty

all: cli

cli: git nvim tmux
gui: cli zed ghostty

git:
	unlink $(HOME)/.gitconfig || true
	ln -sfn $(DOTFILES_DIR)/.gitconfig $(HOME)/.gitconfig

nvim:
	mkdir -p $(CONFIG_DIR)
	unlink $(CONFIG_DIR)/nvim || true
	ln -sfn $(DOTFILES_DIR)/nvim $(CONFIG_DIR)/nvim

tmux:
	mkdir -p $(CONFIG_DIR)
	unlink $(CONFIG_DIR)/tmux
	ln -sfn $(DOTFILES_DIR)/tmux $(CONFIG_DIR)/tmux

zed:
	mkdir -p $(CONFIG_DIR)
	unlink $(CONFIG_DIR)/zed || true
	ln -sfn $(DOTFILES_DIR)/zed $(CONFIG_DIR)/zed

ghostty:
	mkdir -p $(CONFIG_DIR)
	unlink $(CONFIG_DIR)/ghostty || true
	ln -sfn $(DOTFILES_DIR)/ghostty $(CONFIG_DIR)/ghostty
