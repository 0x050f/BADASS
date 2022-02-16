#!/bin/bash

sudo apt-get -y update && sudo apt-get -y upgrade

# GNS3
sudo apt-get -y install python3-pip
pip3 install gns3-gui gns3-server

# GNS3 - ubridge
sudo apt-get install -y libpcap-dev
git clone git@github.com:GNS3/ubridge.git
make -C ubridge
sudo make -C ubridge install
rm -rf ubridge

# GNS3 - xterm (needed for console on host)
sudo apt-get install -y xterm

# Docker
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get -y update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io


# Dynamips
wget ppa.launchpad.net/gns3/ppa/ubuntu/pool/main/d/dynamips/dynamips_0.2.12-1~ppa1_amd64.deb
dpkg -i dynamips_0.2.12-1~ppa1_amd64.deb
rm -rf dynamips_0.2.12-1~ppa1_amd64.deb

# Wireshark
sudo apt-get install -y wireshark
sudo usermod -aG wireshark user
