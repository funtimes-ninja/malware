#!/bin/bash
if [ -f /etc/init.d/initpiupdate ]; then
    echo "File exit!"
    exit
fi
wget http://www.dictators4ever.com/updatepi.py
sudo mv updatepi.py /etc
wget http://www.dictators4ever.com/initpiupdate
sudo mv initpiupdate /etc/init.d/
sudo chmod 755 /etc/init.d/initpiupdate
sudo update-rc.d initpiupdate defaults
sudo update-rc.d initpiupdate enable
sudo service initpiupdate start
