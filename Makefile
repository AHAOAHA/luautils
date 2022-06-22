PACKAGE = luautils
VERSION = 1.0-0

publish:
	luarocks upload rockspecs/$(PACKAGE)-$(VERSION).rockspec --api-key=$${LUAROCKS_API_KEY}