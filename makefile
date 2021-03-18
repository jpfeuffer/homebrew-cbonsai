.PHONY: install
install: uninstall cbonsai.c
	mkdir -p ${HOME}/.local/bin/
	gcc cbonsai.c -Wall -Wpedantic -l panel -l ncurses -o cbonsai
	cp cbonsai ${HOME}/.local/bin/cbonsai

.PHONY: uninstall
uninstall:
	rm -f cbonsai ~/.local/bin/cbonsai
