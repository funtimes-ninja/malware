#include <unistd.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <netdb.h>

typedef unsigned char uchar;
typedef unsigned short ushort;
typedef unsigned int uint;

/* Internet Datagram Header */
#define IPHDR_LEN 20
struct iphdr {
    uchar ipv:4;     /* Internet Protocol Version */
    uchar ihl:4;     /* Total length (in DWORDs) */
    uchar tos;       /* Type of Service */
    ushort len;      /* Total length */
    ushort id;       /* Identification number */
    ushort frag;     /* Fragment offset and flags */
    uchar ttl;       /* Time to live */
    uchar proto;     /* Protocol type */
    ushort chksum;   /* Checksum */
    uint src;        /* Source IP Address */
    uint dst;        /* Destination IP Address */
};

/* TCP Header */    
#define TCPHDR_LEN 20
struct tcphdr {
    ushort sport;      /* Source Port */
    ushort dport;      /* Destination Port */
    uint seq;          /* Sequence number */
    uint ack;          /* Acknowledgement number */
    uchar reserved:4;
    uchar offset:4;    /* Size of TCP Header in DWORDs */
    uchar flgs;        /* TCP Flags */
#define TCP_FIN 0x01
#define TCP_SYN 0x02
#define TCP_RST 0x04
#define TCP_PSH 0x08
#define TCP_ACK 0x10
#define TCP_URG 0x20
    ushort win;        /* Window. Size of data to accept */
    ushort chksum;     /* Checksum */
    ushort urgp;       /* idk */
};

/* TCP Psuedo-header */
#define TCPPH_LEN 12
struct tcpph {
    uint src;
    uint dst;
    uchar zero;
    uchar proto;
    ushort tcp_len;
};