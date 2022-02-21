# Set IP address to Ethernet interface
ip addr add 30.1.1.$(echo $HOSTNAME | sed 's|.*-||')/24 dev eth0

tail -f /dev/null
