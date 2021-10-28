PREFIX ?= /usr/local
BINPREFIX ?= "$(PREFIX)/bin"

OS = $(shell uname)
ifeq ($(OS), FreeBSD)
	MANPREFIX ?= "$(PREFIX)/man/man1"
else
	MANPREFIX ?= "$(PREFIX)/share/man/man1"
endif

LIB = lib
COMMAND = entitle
MANPAGE = entitle.1

default: install

check:
	@echo "Checking dependencies before installation"
	@$(LIB)/check_dependencies.sh
	@echo

install: check
	@mkdir -p $(DESTDIR)$(BINPREFIX)
	@mkdir -p $(DESTDIR)$(MANPREFIX)
	@echo "... installing $(COMMAND) to $(DESTDIR)$(BINPREFIX)"
	@cp -f bin/$(COMMAND) $(DESTDIR)$(BINPREFIX)
	@chmod a+x $(DESTDIR)$(BINPREFIX)/$(COMMAND)
	@echo "... installing $(MANPAGE) to $(DESTDIR)$(MANPREFIX)"
	@cp -f man/$(MANPAGE) $(DESTDIR)$(MANPREFIX)

uninstall:
	@echo "... uninstalling $(DESTDIR)$(BINPREFIX)/$(COMMAND)"
	@rm -f $(DESTDIR)$(BINPREFIX)/$(COMMAND)
	@echo "... uninstalling $(DESTDIR)$(MANPREFIX)/$(MANPAGE)"
	@rm -f $(DESTDIR)$(MANPREFIX)/$(MANPAGE)

.PHONY: default check install uninstall
