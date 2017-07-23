#!/bin/bash

#OS Updates
echo "##updating system...##"
yum update

#Library installations
echo "##updating libraries...##"
yum install -y libcurl4-openssl-dev git
yum install -y build-essential
yum group install -y "Development tools"
yum install -y autotools-dev autoconf
yum install -y libcurl3 libcurl4-gnutls-dev
yum install -y automake
yum install autoconf libtool
yum install git automake gcc make curl-devel
yum install -y autoconf automake gcc-c++ libdb4-cxx libdb4-cxx-devel boost-devel openssl-devel

#Directory navigation
mkdir /downloads
cd /downloads

#Clone Repository for cpuminer
git clone https://github.com/OhGodAPet/cpuminer-multi.git

#Configure CPU Miner
cd cpuminer-multi
./autogen.sh
CFLAGS="-march=native"
./configure --disable-aes-ni
make
make install

#Setup Miner Configuration
#-u is the username
#-p is the password. Password is hashed using linux's openssl feature
minerd -a cryptonight -o stratum+tcp://fcn.pool.minergate.com:45610 -u tylerwbennet@gmail.com -p xybFNxW73x2.M