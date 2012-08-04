#!/bin/bash
SHA1="ee06f89ed472cf369573f8acf9819fbc7173344e"
curl -L -O "http://downloads.sourceforge.net/project/boost/boost/1.50.0/boost_1_50_0.tar.bz2"
if [ "$(shasum boost_1_50_0.tar.bz2 | cut -b -40)" != "${SHA1}" ]; then
	echo boost checksum mismatch
fi
tar -jxf boost_1_50_0.tar.bz2
rm -rf $MUMBLE_PREFIX/include/boost_1_50_0
cp -R boost_1_50_0 $MUMBLE_PREFIX/include/boost_1_50_0
