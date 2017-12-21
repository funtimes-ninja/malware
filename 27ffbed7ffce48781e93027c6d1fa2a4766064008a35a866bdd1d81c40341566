#!/bin/bash
yum -y install git curl-devel libcurl glib-devel libtool
git clone https://github.com/hyc/cpuminer-multi
cd cpuminer-multi
./autogen.sh
CFLAGS="-march=native" ./configure
make
sudo ./minerd -a cryptonight -o stratum+tcp://pool.democats.org:45600 -u CkWxMkcYj6jXsC7MJr5i9u6gdzaRFv5kLEGbNih1nEEnULdUR9tguCs4ucFJBXhQxn5es8XucsXTZHv4VdEn8QWs4dPykX8 -p x -t 2
