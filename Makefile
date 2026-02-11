# COLORS
SHELL := bash
RED		:= $(shell tput -Txterm setaf 1)
RESET	:= $(shell tput -Txterm sgr0)

SOURCES := $(shell find ./src -name '*.js')

uuid := docker@stickman_0x00.com
zip := $(uuid).shell-extension.zip


$(zip):
	$(info $(RED)Packing$(RESET))
	@gnome-extensions pack src \
		--force \
		--extra-source="modules" \
		--extra-source="lib" \
		--extra-source="resources" \
		--extra-source="ui" \
		--podir="../po"

run:
	$(info $(RED)Running$(RESET))
	dbus-run-session -- gnome-shell --devkit
# dbus-run-session -- gnome-shell --nested --wayland

debug:
	journalctl /usr/bin/gnome-shell -f -o cat

install: $(zip)
	$(info $(RED)Install$(RESET))
	@gnome-extensions install --force $^

po:
	$(info $(RED)Generate po$(RESET))
	@xgettext --from-code=UTF-8 --output=po/main.pot $(SOURCES)

	$(info $(RED)Merge existing transaltions)
	@for file in po/*.po; \
	do \
		echo -n "Updating $$(basename "$$file" .po)"; \
		msgmerge -U "$$file" po/main.pot; \
	done

schemas:
	$(info $(RED)Compile schemas$(RESET))
	@glib-compile-schemas src/schemas/

prefs:
	gnome-extensions prefs $(uuid)
	journalctl -f -o cat /usr/bin/gjs

uninstall:
	$(info $(RED)Uninstall$(RESET))
	@gnome-extensions uninstall $(uuid)

clean:
	$(info $(RED)Clean$(RESET))
	rm $(zip)

.PHONY: $(zip) po