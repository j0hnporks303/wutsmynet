PREFIX ?= /usr/local
BINDIR := $(PREFIX)/bin

install:
	mkdir -p "$(BINDIR)"
	install -m 755 wutsmynet "$(BINDIR)/wutsmynet"

uninstall:
	rm -f "$(BINDIR)/wutsmynet"