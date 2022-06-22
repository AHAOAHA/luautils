PACKAGE = luautils
VERSION = 1.0-0

SHELL = /bin/bash

SRCS = $(shell find script -regex '.*.lua$$')

publish: lint test
	luarocks upload rockspecs/$(PACKAGE)-$(VERSION).rockspec --api-key=$${LUAROCKS_API_KEY}

test:
	lua test/test.lua

lint:
	luacheck $(SRCS)
.PHONY: test lint publish