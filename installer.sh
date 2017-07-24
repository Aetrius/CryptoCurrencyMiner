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
yum install -y autoconf libtool
yum install -y git automake gcc make curl-devel
yum install -y autoconf automake gcc-c++ libdb4-cxx libdb4-cxx-devel boost-devel openssl-devel

#Create directory for scripts
echo "Creating directory for scripts..."
mkdir /scripts

#Copy downloaded scripts to scripts directory
cp ./minerCron.txt /scripts
cp ./miner.sh /scripts

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

#Install cronjob
cat /scripts/minerCron.txt >> /etc/crontab

#Create startup task
cat /scripts/miner.sh >> /etc/rc.d/rc.local

