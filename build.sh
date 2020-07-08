#!/bin/bash

brew install automake autoconf libtool libxml2 pkg-config
brew link libxml2
make
rm -rf build geos proj spatialite sqlite3 libspatialite
touch INSTALLED.txt
