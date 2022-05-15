#!/usr/bin/env bash
# Modeled after the excellent https://github.com/GEOSwift/geos project.

set -e

srcdir=.build/sqlite3
sqdir=Sources/sqlite3

mkdir -p "$sqdir/public" "$sqdir/src"

cp $srcdir/sqlite3.c $sqdir/src
cp $srcdir/sqlite3.h $sqdir/public/sqlite3core.h
cp headers/*.h $sqdir/public
cp $srcdir/sqlite3ext.h $sqdir/public

