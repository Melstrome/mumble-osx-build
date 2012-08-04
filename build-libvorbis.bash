#!/bin/bash
SHA1="8dae60349292ed76db0e490dc5ee51088a84518b"
curl -O "http://downloads.xiph.org/releases/vorbis/libvorbis-1.3.3.tar.gz"
if [ "$(shasum libvorbis-1.3.3.tar.gz | cut -b -40)" != "${SHA1}" ]; then
	echo libvorbis checksum mismatch
fi
tar -zxf libvorbis-1.3.3.tar.gz
cd libvorbis-1.3.3
./configure --disable-dependency-tracking --prefix=$MUMBLE_PREFIX --disable-shared --enable-static
make
make install
