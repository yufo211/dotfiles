DOTFILES_DIR := $(patsubst %/,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST)))))
CONFIG_DIR   := $(HOME)/.config
CONFIG_TOOLS := ghostty git nvim tmux zed

# Stop instead of overwriting because a real file or directory at the destination may hold settings that are not in this repository
define link
	@if [ -e "$(2)" ] && [ ! -L "$(2)" ]; then echo "error: $(2) already exists and is not a symlink" >&2; exit 1; fi
	ln -sfn $(1) $(2)
endef

.PHONY: all $(CONFIG_TOOLS)

all: $(CONFIG_TOOLS)

$(CONFIG_TOOLS):
	mkdir -p $(CONFIG_DIR)
	$(call link,$(DOTFILES_DIR)/$@,$(CONFIG_DIR)/$@)
