.PHONY:install kill backup clean
Zhengma.db: Zhengma.txt.in
	/usr/bin/ibus-table-createdb  -n $@ -s $^

Zhengma.txt.in: Zhengma_ibus_Teil1 ../table.txt Zhengma_ibus_Teil2
	cat Zhengma_ibus_Teil1 >  $@
	awk 'BEGIN{OFS="\t";freq=100}/^\w/{if($$1!=old_key){old_key=$$1; freq=100;} freq-=1; print($$1,$$2,freq);}' ../table.txt >> $@
	cat Zhengma_ibus_Teil2 >> $@

install: Zhengma.db
	cp $< /usr/share/ibus-table/tables/Zhengma.db
	# mkdir -p ~/.ibus/tables/
	# cp $< ~/.ibus/tables/

clean:
	-rm Zhengma.txt.in Zhengma.db

kill:
	kill -9 `ps -A | grep 'ibus' | sed 's/^\s*\([0-9]\+\).*/\1/'`
