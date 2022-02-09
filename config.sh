#!/bin/bash

sudo apt-get update && sudo apt-get upgrade

sudo apt-get install python3-pip
pip3 install gns3-gui gns3-server
