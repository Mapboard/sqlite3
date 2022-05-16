#!/usr/bin/env bash
# Modeled after the excellent https://github.com/GEOSwift/geos project.

set -e

srcdir=.build/sqlite3
sqdir=Sources/sqlite3

rm -f $sqdir/src/sqlite3.c
cp $srcdir/sqlite3.c $sqdir/src
cp $srcdir/sqlite3.h $sqdir/public/sqlite3core.h
cp $srcdir/sqlite3ext.h $sqdir/public
