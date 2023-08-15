.PHONY:install kill backup clean

TABLE_FILE=../../table.txt
zm.mb: Zhengma.txt.in
	txt2mb $^ $@

Zhengma.txt.in: ../Zhengma_fcitx_HEAD $(TABLE_FILE)
	cat $< > $@
	sed -e 's/\([^ \t]\+\)\s\+\([^ \t]\+\)\s*.*/\1\t\2/' $(TABLE_FILE)  >> $@

install: zm.mb ../zm.conf
	# cp $^ /usr/share/fcitx/table/
	mkdir -p ~/.config/fcitx/table ; cp $^ ~/.config/fcitx/table/

clean:
	-rm Zhengma.txt.in zm.mb

kill:
	kill -9 `ps -A | grep 'fcitx' | sed 's/^\s*\([0-9]\+\).*/\1/'`
