#!/usr/bin/env bash
# Modeled after the excellent https://github.com/GEOSwift/geos project.

set -e

srcdir=.build/sqlite3
sqdir=Sources/CSQLite

# Remove SQLite3 source files and headers
rm -f $sqdir/src/sqlite3.c $sqdir/public/sqlite3.h $sqdir/public/sqlite3ext.h
mkdir -p $sqdir/src

cp $srcdir/sqlite3.c $sqdir/src
cp $srcdir/sqlite3.h $srcdir/sqlite3ext.h $sqdir/public
