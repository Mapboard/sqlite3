SRC = .sources
BUILD = .build

all: ./update.sh ${BUILD}/sqlite3
	$^

${SRC}:
	mkdir -p $@
	curl -L http://download.osgeo.org/proj/proj-9.0.0.tar.gz | tar -xz -C $@ --strip-components=1

${BUILD}/sqlite3: ${SRC}/sqlite3
	rm -rf $@
	mkdir -p ${BUILD}
	cp -r $^ $@
	cd $@ && ./configure


${SRC}/sqlite3:
	mkdir -p $@
	curl https://www.sqlite.org/2022/sqlite-autoconf-3380100.tar.gz | tar -xz -C $@ --strip-components=1