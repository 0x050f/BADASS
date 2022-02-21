#!/bin/sh

/usr/lib/frr/frrinit.sh start
sh /$(hostname)

tail -f /dev/null
