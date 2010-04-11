.PHONY:install kill backup
zm.bin: Zhengma.txt.in
	-cp Zhengma.txt.in.bak1 Zhengma.txt.in.bak2
	cp Zhengma.txt.in Zhengma.txt.in.bak1
	scim-make-table Zhengma.txt.in -b -o zm.bin

install: zm.bin
	cp zm.bin /usr/share/scim/tables/zm.bin
	# cp zm.bin ~/.scim/user-tables/zm.bin

kill:
	kill -9 `ps -A | grep 'scim\|skim' | sed 's/^\s*\([0-9]\+\).*/\1/'`

backup:
	tar cjf zm_for_scim_bak.tar.bz2 Makefile Zhengma.txt.in* zm.bin
