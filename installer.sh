#!/bin/bash

yum -y update
yum -y install libcurl4-openssl-dev git
yum install -y build-essential
yum install -y autotools-dev autoconf
yum install -y libcurl3 libcurl4-gnutls-dev
mkdir /downloads

cd /downloads
git clone https://github.com/OhGodAPet/cpuminer-multi.git -u aetrius -p M0nster2
cd cpuminer-multi

./autogen.sh
CFLAGS="-march=native" ./configure
./configure --disable-aes-ni
make
make install

minerd -a cryptonight -o stratum+tcp://fcn.pool.minergate.com:45610 -u tylerwbennet@gmail.com -p M0nster2