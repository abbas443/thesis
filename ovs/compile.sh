#!/bin/bash
clear
./configure --with-linux=/lib/modules/$(uname -r)/build
make clean
make
sudo rmmod openvswitch
sudo make install
sudo make modules_install
sudo modprobe openvswitch
