#!/bin/sh

/usr/lib/frr/frrinit.sh start
if [ $(echo $HOSTNAME | sed 's|.*-||') -eq "1" ]
then
  sh /spine_router.sh
else
  sh /leaf_router.sh
fi

tail -f /dev/null
