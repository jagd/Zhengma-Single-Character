.PHONY:install kill backup clean
Zhengma.mb: Zhengma.txt.in
	txt2mb $^ $@

Zhengma.txt.in: Zhengma_fcitx_HEAD ../table.txt
	cat Zhengma_fcitx_HEAD > $@
	sed -e 's/\([^ \t]\+\)\s\+\([^ \t]\+\)\s*.*/\1\t\2/' ../table.txt >> $@

install: Zhengma.mb
	# cp $< /usr/share/fcitx/data/
	cp $< ~/.fcitx/

clean:
	-rm Zhengma.txt.in Zhengma.mb

kill:
	kill -9 `ps -A | grep 'fcitx' | sed 's/^\s*\([0-9]\+\).*/\1/'`
