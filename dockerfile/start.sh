#!/bin/sh

# conf files are in /etc/quagga by default
/usr/sbin/bgpd -d
/usr/sbin/ospfd -d
/usr/sbin/isisd -d

/usr/lib/frr/frrinit.sh start
sh /$(hostname)

tail -f /dev/null
