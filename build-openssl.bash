#!/bin/bash
SHA1="31e6e8bbf1de2f59fbd53382c34214887ccc1318"
curl -O http://www.openssl.org/source/openssl-1.0.0j.tar.gz
if [ "$(shasum -a 1 openssl-1.0.0j.tar.gz | cut -b -40)" != "${SHA1}" ]; then
	echo openssl checksum mismatch
	exit
fi
tar -zxf openssl-1.0.0j.tar.gz
cd openssl-1.0.0j
./Configure darwin64-x86_64-cc no-shared --prefix=$MUMBLE_PREFIX --openssldir=$MUMBLE_PREFIX/openssl
make
make install
