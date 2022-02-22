#!/bin/sh

/usr/lib/frr/frrinit.sh start
if [[ $# == 0 ]]
then
  if [ $(echo $HOSTNAME | sed 's|.*-||') -eq "1" ]
  then
    sh /spine_router.sh
  else
    sh /leaf_router.sh
  fi
fi

tail -f /dev/null
