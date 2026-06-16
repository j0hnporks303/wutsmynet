PREFIX ?= /usr/local
BINDIR := $(PREFIX)/bin

makedir:
	mkdir -p $(PREFIX)/bin
install:
	install -m 755 wutsmynet $(BINDIR)/wutsmynet

uninstall:
	rm -f $(BINDIR)/wutsmynet
