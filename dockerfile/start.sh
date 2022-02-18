#!/bin/sh

# conf files are in /etc/quagga by default
/usr/sbin/bgpd -d
/usr/sbin/ospfd -d
/usr/sbin/isisd -d

sh /$(hostname)

tail -f /dev/null
