# BADASS

This network administration project consists in the simulation of a network using GNS3 and Docker images.

The project runs on a Parrot Virtual Machine and is split in three parts:
- Basic configuration of GNS3 with a host and a router running from a Docker image.
- VXLAN network with dynamic multicast
- A datacenter-like network with BGP EVPN

## VM installation

* Creating a VM with ParrotOS
```
wget https://download.parrot.sh/parrot/iso/4.11.3/Parrot-home-4.11.3_virtual.ova
```
 * Enabling SSH
 ```
sudo apt-get install openssh-server
systemctl enable ssh
systemctl restart ssh
```

* Installing our tools on our VM
	see [config.sh](config.sh)

* Building our Docker images
```
docker build ./images/ -t host --target host
docker build ./images/ -t router --target router
```

## Part 1: GNS3 x Docker

The first part works as an introduction to GNS3. We need to set up a host and a router using our Docker images and we must be able to connect to both machines through the GNS3 interface.

Run ``` gns3 P1/P1.gns3project ``` in order to start the simulation.

## Part 2: VXLAN
VXLAN (Virtual Extensible LAN) is a network virtualization technology that solves the VLAN 4K addresses limitation.


![P2-image](/assets/P2-image.png)

Run ``` gns3 P2/P2.gns3project ``` in order to start the simulation.

## Part 3: BGP EVPN


![P3-image](/assets/P3-image.png)

Run ``` gns3 P3/P3.gns3project ``` in order to start the simulation.
