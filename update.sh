#!/usr/bin/env bash
# Modeled after the excellent https://github.com/GEOSwift/geos project.

set -e

srcdir=.build/sqlite3
sqdir=Sources/sqlite3

rm -rf $sqdir
mkdir -p $sqdir/src $sqdir/public
cp $srcdir/sqlite3.c $sqdir/src
cp $srcdir/sqlite3.h $srcdir/sqlite3ext.h $sqdir/public
