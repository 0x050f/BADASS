#get the right number from GNS3 for ip last number
number=$(echo $HOSTNAME | sed 's|.*-||')

# Set IP address to the Ethernet interface
ip addr add 10.1.1.$number/24 dev eth0

ip link set eth0 up
ip link set eth1 up

# Create the VXLAN interface according to RFC 7348
ip link add name vxlan10 type vxlan id 10 dstport 4789 local 10.1.1.$number remote 10.1.1.$([ $number -eq 1 ] && echo 2 || echo 1)

bridge fdb append 00:00:00:00:00:00 dev vxlan10 dst 10.1.1.$(echo $number * 3 | bc)
bridge fdb append 00:00:00:00:00:00 dev vxlan10 dst 10.1.1.$(echo $number * 4 | bc)

Brctl br0
Brctl addif br0 vxlan10
Brctl addif br0 eth1
#
#
Brctl stp br0 off
#
# Activate the VXLAN interface
Ip link set up dev br0
ip link set vxlan10 up

tail -f /dev/null
