SHELL := /usr/bin/env bash

.SHELLFLAGS := -o errexit -o pipefail -o nounset -c

MAKEFLAGS += --no-builtin-rules
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --silent

.EXPORT_ALL_VARIABLES:
.SUFFIXES:

define INSTALL_INFO
# Install dotfiles.
endef
.PHONY: install
ifeq ($(HELP),y)
install:
	echo "$$INSTALL_INFO"
else
install:
	hack/make-targets/install.sh
endif
