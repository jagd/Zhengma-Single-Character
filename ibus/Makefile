.PHONY:install kill backup clean
Zhengma.db: Zhengma.txt.in
	/usr/bin/ibus-table-createdb  -n $@ -s $^

Zhengma.txt.in: Zhengma_ibus_Teil1 ../table.txt Zhengma_ibus_Teil2
	cat $^ > $@

install: Zhengma.db
	cp $< /usr/share/ibus-table/tables/Zhengma.db

clean:
	-rm Zhengma.txt.in Zhengma.db

kill:
	kill -9 `ps -A | grep 'ibus' | sed 's/^\s*\([0-9]\+\).*/\1/'`
