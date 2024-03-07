SRC = .sources
BUILD = .build

.PHONY: all clean

all: ./update.sh ${BUILD}/sqlite3
	$^

${BUILD}/sqlite3: ${SRC}/sqlite3
	rm -rf $@
	mkdir -p ${BUILD}
	cp -r $^ $@
	cd $@ && ./configure


${SRC}/sqlite3:
	mkdir -p $@
	curl https://www.sqlite.org/2024/sqlite-autoconf-3450100.tar.gz | tar -xz -C $@ --strip-components=1

clean:
	rm -rf ${BUILD}
	rm -rf ${SRC}